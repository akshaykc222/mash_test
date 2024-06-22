import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/facilities/get_facility_dashboard_use_case.dart';

import '../../../../../core/usecase.dart';

part 'facilities_event.dart';
part 'facilities_state.dart';
part 'facilities_bloc.freezed.dart';

@injectable
class FacilitiesBloc extends Bloc<FacilitiesEvent, FacilitiesState> {
  FacilitiesBloc(this.getFacilitiesDashBoardUseCase) : super( FacilitiesState.initial()) {
    on<FacilitiesEvent>((event, emit) {
      // TODO: implement event handler
    });
     on<_GetFacilityDashBoardData>(_getFacilityDashBoard);
  }

  final GetFacilitiesDashBoardUseCase getFacilitiesDashBoardUseCase;
  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  Future<FutureOr<void>> _getFacilityDashBoard(_GetFacilityDashBoardData event, Emitter<FacilitiesState> emit) async {
    emit(state.copyWith(getFacilityDashBoard: ResponseClassify.loading()));
    try {
      final userdata = await getUserInfoUseCase.call(NoParams());
      final data = await getFacilitiesDashBoardUseCase.call(GetFacilityDashBoardRequest(companyId: userdata?.compId ?? '', pStudentId: userdata?.studentId ?? '', pTabId: ''

      ));
      emit(state.copyWith(
        getFacilityDashBoard: ResponseClassify.completed(data),
      ));
    } catch (e) {
      emit(state.copyWith(
          getFacilityDashBoard: ResponseClassify.error(e.toString())));
    }
  }
}
