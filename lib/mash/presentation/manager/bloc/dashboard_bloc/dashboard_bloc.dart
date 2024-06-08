import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart';

import '../../../../../core/custom_exception.dart';
import '../../../../../core/response_classify.dart';
import '../../../../../di/injector.dart';
import '../../../../domain/entities/dashboard/digital_library_entity.dart';
import '../../../../domain/use_cases/academic/get_digital_library_use_case.dart';
import '../../../utils/app_constants.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// BLoC responsible for managing the state related to the dashboard.
@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final FetchWordThoughtUseCase fetchWordThoughtUseCase;
  final GetUserInfoUseCase userInfoUseCase;

  /// Constructs a [DashboardBloc] instance.
  ///
  /// [fetchWordThoughtUseCase]: Use case for fetching word and thought of the day.
  DashboardBloc(this.fetchWordThoughtUseCase, this.userInfoUseCase)
      : super(DashboardState.initial()) {
    on<_FetchWordAndThoughtOftheDayEvent>(_fetchWordAndThoughtOftheDayEvent);
  }

  /// Handles the [_FetchWordAndThoughtOftheDayEvent] event by fetching the word and thought of the day.
  ///
  /// [event]: The event triggering the fetch operation.
  /// [emit]: The emitter to emit new states.
  void _fetchWordAndThoughtOftheDayEvent(
      _FetchWordAndThoughtOftheDayEvent event,
      Emitter<DashboardState> emit) async {
    emit(state.copyWith(wordThoughtResponse: ResponseClassify.loading()));

    try {
      final user = await _getUserInformation();
      final res = await fetchWordThoughtUseCase.call(AcademicAndCompIdRequest(
          pAcademicId: user?.academicId ?? "", pCompID: user?.compId ?? ""));
      emit(
          state.copyWith(wordThoughtResponse: ResponseClassify.completed(res)));
    } on UnauthorisedException catch (e) {
      emit(state.copyWith(
          wordThoughtResponse: ResponseClassify.error("$e Unauthorized")));
      if (event.context.mounted) handleUnAuthorizedError(event.context);
    } catch (e) {
      prettyPrint(e.toString());
    }
  }

//For fetching user infomations from
  _getUserInformation() async {
    return await userInfoUseCase.call(NoParams());
  }

  ///[USE CASES]///
  final digitalLibraryUseCase = getIt<DigitalLibraryUseCase>();
  final getLoginUseCase = getIt<GetUserInfoUseCase>();
}
