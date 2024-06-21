part of 'facilities_bloc.dart';

@freezed
class FacilitiesEvent with _$FacilitiesEvent {
  const factory FacilitiesEvent.started() = _Started;
  const factory FacilitiesEvent.getFacilityDashBoard({required String? pTabId}) = _GetFacilityDashBoardData;
}
