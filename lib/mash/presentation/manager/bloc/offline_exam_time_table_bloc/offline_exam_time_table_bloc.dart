import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/get_exam_terms_detail_request.dart';
import 'package:mash/mash/data/remote/models/request/get_offline_exam_time_table_request.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_time_table_use_case.dart';
import 'package:mash/mash/domain/use_cases/profile/get_siblings_use_case.dart';

import '../../../../../core/usecase.dart';
import '../../../../domain/use_cases/oflline_exam_time_table_term_usecase/offline_exam_terms_use_case.dart';

part 'offline_exam_time_table_event.dart';
part 'offline_exam_time_table_state.dart';
part 'offline_exam_time_table_bloc.freezed.dart';

@lazySingleton
@injectable
class OfflineExamTimeTableBloc extends Bloc<OfflineExamTimeTableEvent, OfflineExamTimeTableState> {
  OfflineExamTimeTableBloc() : super( OfflineExamTimeTableState.initial()) {
    on<OfflineExamTimeTableEvent>((event, emit) {
    });
    on<_GetOfflineExamTerms>(_getOfflineExamTerm);
    on<_GetOfflineExamTimeTable>(_getOfflineExamTimeTable);
  }

  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();
  final GetOfflineExamTimeTableUseCase getOfflineExamTimeTableUseCase = getIt<GetOfflineExamTimeTableUseCase>();
  final GetOfflineExamTermsUseCase getOfflineExamTermsUseCase = getIt<GetOfflineExamTermsUseCase>();
  final GetSiblingsUseCase getSiblingsUseCase = getIt<GetSiblingsUseCase>();

  static OfflineExamTimeTableBloc get(context) => BlocProvider.of(context);

  FutureOr<void> _getOfflineExamTerm(_GetOfflineExamTerms event, Emitter<OfflineExamTimeTableState> emit) async {
    emit(state.copyWith(getOfflineExamTerms: ResponseClassify.loading()));
    try{
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var response = await getOfflineExamTermsUseCase.call(ExamTermDetailRequest(companyId: loginInfo?.compId ?? '', pAcademicId: loginInfo?.academicId ?? '', classId: loginInfo?.classId ?? '' ));
          if(response.isNotEmpty){
            add(OfflineExamTimeTableEvent.getOfflineExamTimeTable(termId:response.first.termId ));
          }
      emit(state.copyWith(getOfflineExamTerms: ResponseClassify.completed(response)));
    }catch(e){
      prettyPrint(e.toString());
      emit(state.copyWith(getOfflineExamTerms: ResponseClassify.error(e)));
    }
  }



  FutureOr<void> _getOfflineExamTimeTable(_GetOfflineExamTimeTable event, Emitter<OfflineExamTimeTableState> emit) async {
    emit(state.copyWith(getOfflineExamTimeTable: ResponseClassify.loading()));
    try{
      var loginInfo = await getUserInfoUseCase.call(NoParams());
      var siblingInfo = await getSiblingsUseCase.call(loginInfo?.compId ?? '');
      // var response = await getOfflineExamTimeTableUseCase.call(ExamTimeTableRequest(companyId: loginInfo?.compId ?? '', pAcademicId: loginInfo?.academicId ?? '', pKidId:siblingInfo[0].userId ?? '', termId:event.termId));
      var response = await getOfflineExamTimeTableUseCase.call(ExamTimeTableRequest(companyId: '200001', pAcademicId:  '87', pKidId:'MGS1000152', termId:"773"));
      emit(state.copyWith(getOfflineExamTimeTable: ResponseClassify.completed(response)));
    }catch(e){
      emit(state.copyWith(getOfflineExamTimeTable: ResponseClassify.error(e)));
    }
  }
  }

