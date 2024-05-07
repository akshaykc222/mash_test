part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required ResponseClassify<WordThoughtsEntity>? wordThoughtResponse,
  }) = _DashboardState;
  factory DashboardState.initial() => DashboardState(
        wordThoughtResponse: ResponseClassify.initial(),
      );
}
