


import 'package:equatable/equatable.dart';

class VehicleTrackerEntity extends Equatable{
  String stopId;
  String stops;
  String routeCode;
  double latitude;
  double longitude;

  VehicleTrackerEntity({
    required this.stopId,
    required this.stops,
    required this.routeCode,
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object> get props =>  [
    stopId,
    stops,
    routeCode,
    latitude,
    longitude,
  ];
}