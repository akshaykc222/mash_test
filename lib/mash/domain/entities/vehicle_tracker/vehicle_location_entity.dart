import 'package:equatable/equatable.dart';

class VehicleLocationEntity extends Equatable {
  final String status;
  final double latitude;
  final double longitude;

  const VehicleLocationEntity(
      {required this.status, required this.latitude, required this.longitude});

  @override
  List<Object?> get props => [status, latitude, longitude];
}
