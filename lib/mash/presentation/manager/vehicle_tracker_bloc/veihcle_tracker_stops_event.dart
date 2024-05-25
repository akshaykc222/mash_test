part of 'veihcle_tracker_stops_bloc.dart';

@freezed
class VeihcleTrackerStopsEvent with _$VeihcleTrackerStopsEvent {
  const factory VeihcleTrackerStopsEvent.started() = _Started;
  const factory VeihcleTrackerStopsEvent.getVehicleTrackerStop() = _GetVehicletrackerStop;
  const factory VeihcleTrackerStopsEvent.addPolyLines({required Set<Polyline> polyLine}) = _AddPolyLines;

}
