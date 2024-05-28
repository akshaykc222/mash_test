import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/vehicle_tracker_data_source.dart';
import 'package:mash/mash/data/remote/models/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';
import 'package:mash/mash/domain/repositories/vehicle_tracker_repository.dart';

@LazySingleton(as: VehicleTrackerRepository)
@injectable
class VehicleTrackerRepoImpl extends VehicleTrackerRepository{
  final VehicleTrackerDataSource dataSource;

  VehicleTrackerRepoImpl(this.dataSource);


  @override
  Future<List<VehicleTrackerEntity>> getStudentVehicleStops(VehicleTrackerRequest request) {
    // TODO: implement getStudentVehicleStops
   return dataSource.getVehicleTrackerStop(request);
  }

}