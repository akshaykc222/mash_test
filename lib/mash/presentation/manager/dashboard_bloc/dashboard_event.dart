part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.fetchWordAndThoughtOftheDayEvent(
    AcademicAndCompIdRequest params,
    BuildContext context,
  ) = _FetchWordAndThoughtOftheDayEvent;
}
