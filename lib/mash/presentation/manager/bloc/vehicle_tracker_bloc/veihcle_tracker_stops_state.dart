part of 'veihcle_tracker_stops_bloc.dart';

@freezed
class VeihcleTrackerStopsState with _$VeihcleTrackerStopsState {

  const factory VeihcleTrackerStopsState({
    ResponseClassify<List<VehicleTrackerEntity>>? getTrackerStops,Set<Polyline>? polyLines,
  }) = _VeihcleTrackerStopsState;

  factory VeihcleTrackerStopsState.initial() => const VeihcleTrackerStopsState();
}
