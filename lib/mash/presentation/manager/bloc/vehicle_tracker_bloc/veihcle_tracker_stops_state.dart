part of 'veihcle_tracker_stops_bloc.dart';

@freezed
class VehicleTrackerStopsState with _$VehicleTrackerStopsState {
  const factory VehicleTrackerStopsState({
    StudentRouteEntity? getTrackerStops,
    Set<Polyline>? polyLines,
    VehicleLocationEntity? getBusLiveLocation,
    @Default(false) bool isLoading,
  }) = _VehicleTrackerStopsState;

  factory VehicleTrackerStopsState.initial() =>
      const VehicleTrackerStopsState();
}
