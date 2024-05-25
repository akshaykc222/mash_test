import 'package:mash/mash/data/remote/models/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';

abstract class VehicleTrackerRepository{
  Future<List<VehicleTrackerEntity>>  getStudentVehicleStops(VehicleTrackerRequest request);
}