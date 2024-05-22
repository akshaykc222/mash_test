import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/home_work_report_request.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart';
import 'package:mash/mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart';

part 'home_work_notes_event.dart';
part 'home_work_notes_state.dart';
part 'home_work_notes_bloc.freezed.dart';

@injectable
class HomeWorkNotesBloc extends Bloc<HomeWorkNotesEvent, HomeWorkNotesState> {
  final HomeWorkReportsUseCase homeWorkReportsUseCase;
  final GetUserInfoUseCase getUserInfoUseCase;
  final NotesReportsUseCase notesReportsUseCase;
  HomeWorkNotesBloc(this.homeWorkReportsUseCase, this.getUserInfoUseCase,
      this.notesReportsUseCase)
      : super(HomeWorkNotesState.initial()) {
    on<_GetHomeWorkReportEvent>(_getHomeWorkReport);
    on<_GetNotesWorkReport>(_getNotesWorkReport);
  }

  _getHomeWorkReport(
      _GetHomeWorkReportEvent event, Emitter<HomeWorkNotesState> emit) async {
    emit(state.copyWith(homeWorkReportResponse: ResponseClassify.loading()));
    try {
      final userData = await getUserInfoUseCase.call(NoParams());
      if (userData != null) {
        final data = await homeWorkReportsUseCase.call(HomeWorkReportRequest(
          compId: userData.compId,
          startDate: event.startDate,
          endDate: event.endDate,
          classId: userData.classId ?? '',
          divId: userData.divisionId ?? "",
          subjId: userData.studentId ?? '',
          acadId: userData.academicId ?? '',
        ));
        emit(state.copyWith(
            homeWorkReportResponse: ResponseClassify.completed(data)));
      }
    } catch (e) {
      emit(state.copyWith(
          homeWorkReportResponse: ResponseClassify.error(e.toString())));
    }
  }

  _getNotesWorkReport(
      _GetNotesWorkReport event, Emitter<HomeWorkNotesState> emit) async {
    emit(state.copyWith(homeWorkReportResponse: ResponseClassify.loading()));
    try {
      final userData = await getUserInfoUseCase.call(NoParams());
      if (userData != null) {
        final data = await notesReportsUseCase.call(HomeWorkReportRequest(
          compId: userData.compId,
          startDate: event.startDate,
          endDate: event.endDate,
          classId: userData.classId ?? '',
          divId: userData.divisionId ?? '',
          subjId: userData.studentId ?? '',
          acadId: userData.academicId ?? "",
        ));
        emit(state.copyWith(
            homeWorkReportResponse: ResponseClassify.completed(data)));
      }
    } catch (e) {
      emit(state.copyWith(
          homeWorkReportResponse: ResponseClassify.error(e.toString())));
    }
  }
}
