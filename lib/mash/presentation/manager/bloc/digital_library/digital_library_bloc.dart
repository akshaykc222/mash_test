import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/models/request/digital_library_request.dart';
import 'package:mash/mash/domain/entities/academic/academic_type_entity.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/use_cases/academic/get_academic_type_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/presentation/utils/enums.dart';

import '../../../../data/remote/models/request/di_type_request.dart';
import '../../../../domain/entities/academic/class_details_entity.dart';
import '../../../../domain/entities/dashboard/digital_library_entity.dart';
import '../../../../domain/use_cases/academic/get_class_details_usecase.dart';
import '../../../../domain/use_cases/academic/get_digital_library_use_case.dart';

part 'digital_library_bloc.freezed.dart';
part 'digital_library_event.dart';
part 'digital_library_state.dart';

@lazySingleton
@injectable
class DigitalLibraryBloc
    extends Bloc<DigitalLibraryEvent, DigitalLibraryState> {
  DigitalLibraryBloc() : super(DigitalLibraryState.initial()) {
    on<_GetClasses>(_getClasses);
    on<_SelectClass>(_selectClass);
    on<_GetLibrary>(_getLibrary);
    on<_GetTypes>(_getTypes);
    on<_GetNonAcademic>(_getNonAcademic);
    on<_SelectNonAcademicType>(_selectNonAcademicType);
    on<_SelectMedium>(_selectMedium);
    on<_SelectSubCat>(_selectSubCat);
  }

  _getClasses(_GetClasses event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(getClasses: ResponseClassify.loading()));
    try {
      LoginResTableEntity? loginRes = await loginInfo.call(NoParams());
      if (loginRes != null) {
        var getClass = await getClassUseCase.call(AcademicAndCompIdRequest(
            pAcademicId: loginRes.academicId ?? "", pCompID: loginRes.compId));
        emit(state.copyWith(getClasses: ResponseClassify.completed(getClass)));
        if (getClass.isNotEmpty) {
          add(DigitalLibraryEvent.selectClass(getClass.first));
        }
      }
    } catch (e) {
      emit(state.copyWith(getClasses: ResponseClassify.error(e)));
    }
  }

  //use cases

  final getClassUseCase = getIt<GetClassInforUseCase>();
  final loginInfo = getIt<GetUserInfoUseCase>();
  final getDigitalLibraryUseCase = getIt<DigitalLibraryUseCase>();
  final getTypes = getIt<GetAcademicTypesUseCase>();

  _selectClass(_SelectClass event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(selectedClass: event.selected));
    var loginData = await loginInfo.call(NoParams());
    var request = DigitalLibraryRequest(
      pCompId: loginData?.compId ?? "",
      pUserId: loginData?.usrId ?? "",
      pModuleName: 'DL_ACADEMIC_CONTENT_MOB',
      prmContentId: "-1",
      prmIsActive: '1',
      prmTypeId: '2',
      prmSubId: '-1',
      prmSearchTxt: '',
      prmClassId: event.selected.classId,
      prmOffset: 0,
      prmLimit: 10,
    );
    prettyPrint(request.toJson().toString());
    add(DigitalLibraryEvent.getLibrary(request));
  }

  _getLibrary(_GetLibrary event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(getLibrary: ResponseClassify.loading()));
    try {
      prettyPrint(event.request.toJson().toString());
      emit(state.copyWith(
          getLibrary: ResponseClassify.completed(
              await getDigitalLibraryUseCase.call(event.request))));
    } catch (e) {
      emit(state.copyWith(getLibrary: ResponseClassify.error(e)));
    }
  }

  static DigitalLibraryBloc get(context) => BlocProvider.of(context);

  _getTypes(_GetTypes event, Emitter<DigitalLibraryState> emit) async {
    if (event.moduleName == "SUBCATEGORY_LIST") {
      emit(state.copyWith(subCats: ResponseClassify.loading()));
    } else {
      if (event.moduleName == "DL_TYPE" && event.pJson == "0") {
        emit(state.copyWith(mediums: ResponseClassify.loading()));
      } else {
        emit(state.copyWith(getTypes: ResponseClassify.loading()));
      }
    }
    try {
      var loginData = await loginInfo.call(NoParams());
      var response = await getTypes.call(DlTypeRequest(
          pCompId: loginData?.compId ?? "",
          pUserId: loginData?.usrId ?? "",
          pModuleName: event.moduleName,
          pJson: event.pJson));
      prettyPrint(DlTypeRequest(
              pCompId: loginData?.compId ?? "",
              pUserId: loginData?.usrId ?? "",
              pModuleName: event.moduleName,
              pJson: event.pJson)
          .toJson()
          .toString());
      if (event.moduleName == "SUBCATEGORY_LIST") {
        prettyPrint("data length :${response.length}");
        emit(state.copyWith(subCats: ResponseClassify.completed(response)));
      } else {
        if (event.moduleName == "DL_TYPE" && event.pJson == "0") {
          emit(state.copyWith(mediums: ResponseClassify.completed(response)));
        } else {
          emit(state.copyWith(getTypes: ResponseClassify.completed(response)));
        }
      }
    } catch (e, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }

      emit(state.copyWith(getTypes: ResponseClassify.error(e)));
    }
  }

  _getNonAcademic(
      _GetNonAcademic event, Emitter<DigitalLibraryState> emit) async {
    var loginData = await loginInfo.call(NoParams());
    add(DigitalLibraryEvent.getLibrary(DigitalLibraryRequest(
      pCompId: loginData?.compId ?? "",
      pUserId: loginData?.usrId ?? "",
      pModuleName: "DL_NON_ACADEMIC_CONTENT_MOB",
      prmIsActive: "1",
      prmLimit: 10,
      prmOffset: 0,
      prmContentId: "-1",
      prmTypeId: event.typeId,
      prmCatId: event.catId ?? "-1",
      prmSubCatId: event.catId ?? "-1",
      prmLangId: "-1",
      prmSearchTxt: "",
      prmUserType: loginData?.userType,
    )));
  }

  _selectNonAcademicType(
      _SelectNonAcademicType event, Emitter<DigitalLibraryState> emit) {
    if (state.selectedSubCat == null) {
      add(const DigitalLibraryEvent.getTypes(
          "SUBCATEGORY_LIST", "1")); //getting sub category list
    }
    if (state.selectedMedium == null) {
      add(const DigitalLibraryEvent.getTypes(
          "DL_TYPE", "0")); //getting medium list
    }
    emit(state.copyWith(selectedNonAcademic: event.selected));
    // add(event)
  }

  _selectSubCat(_SelectSubCat event, Emitter<DigitalLibraryState> emit) async {
    emit(state.copyWith(selectedSubCat: event.selected));

    add(DigitalLibraryEvent.getNonAcademic(typeId: event.selected.typeId));
  }

  _selectMedium(_SelectMedium event, Emitter<DigitalLibraryState> emit) {
    emit(state.copyWith(selectedMedium: event.selected));
    add(DigitalLibraryEvent.getNonAcademic(typeId: event.selected.typeId));
  }
}
