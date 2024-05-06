import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart';

import '../../../../core/custom_exception.dart';
import '../../../../core/response_classify.dart';
import '../../utils/app_constants.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final FetchWordThoughtUseCase fetchWordThoughtUseCase;
  DashboardBloc(this.fetchWordThoughtUseCase)
      : super(DashboardState.initial()) {
    on<_FetchWordAndThoughtOftheDayEvent>(_fetchWordAndThoughtOftheDayEvent);
  }

  _fetchWordAndThoughtOftheDayEvent(_FetchWordAndThoughtOftheDayEvent event,
      Emitter<DashboardState> emit) async {
    emit(state.copyWith(wordThoughtResponse: ResponseClassify.loading()));
    try {
      final res = await fetchWordThoughtUseCase.call(event.params);
      emit(
          state.copyWith(wordThoughtResponse: ResponseClassify.completed(res)));
    } on UnauthorisedException catch (e) {
      emit(state.copyWith(
          wordThoughtResponse: ResponseClassify.error("$e Un authorized")));
      handleUnAuthorizedError(event.context);
    } catch (e) {
      prettyPrint(e.toString());
    }
  }
}
