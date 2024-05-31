part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.fetchWordAndThoughtOftheDayEvent(
    BuildContext context,
  ) = _FetchWordAndThoughtOftheDayEvent;
  const factory DashboardEvent.getDigitalLibrary(
      {String? search, String? catId, String? subCatId}) = _GetDigitalLibrary;
}
