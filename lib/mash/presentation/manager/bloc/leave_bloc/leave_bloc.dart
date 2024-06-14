import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/request/leave_dashboard_request.dart';
import 'package:mash/mash/domain/entities/leave/leave_dashboard_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/leave/leave_use_case.dart';

part 'leave_event.dart';
part 'leave_state.dart';
part 'leave_bloc.freezed.dart';

@injectable
class LeaveBloc extends Bloc<LeaveEvent, LeaveState> {
  LeaveBloc() : super(LeaveState.initial()) {
    on<LeaveEvent>((event, emit) {
      // TODO: implement event handler
    });
     on<_GetLeaveDashboardData>(_getLeaveDashboardData);

  }

  final GetDashboardLeaveUseCase getDashboardLeaveUseCase = getIt<GetDashboardLeaveUseCase>();
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  static LeaveBloc get(context) => BlocProvider.of(context);

  Future<FutureOr<void>> _getLeaveDashboardData(_GetLeaveDashboardData event, Emitter<LeaveState> emit) async {
    emit(state.copyWith(getLeaveDashboardData: ResponseClassify.loading()));
    try{
    var loginInfo = await getUserInfoUseCase.call(NoParams());
    var response = await getDashboardLeaveUseCase.call(LeaveDashboardRequest(pCompId: loginInfo?.compId ?? '', pUserId: loginInfo?.usrId ?? '', pAcademicId: loginInfo?.academicId ?? '', pDivisionId: loginInfo?.divisionId ?? ''));
    emit(state.copyWith(getLeaveDashboardData: ResponseClassify.completed(response)));
    }catch(e){
    emit(state.copyWith(getLeaveDashboardData: ResponseClassify.error(e)));
    }
  }
}
