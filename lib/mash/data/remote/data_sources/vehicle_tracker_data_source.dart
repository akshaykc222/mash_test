import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/request/vehicle_tracker_request.dart';
import 'package:mash/mash/data/remote/models/vehicle_tracker/vehicle_tracker_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';

abstract class VehicleTrackerDataSource {
  Future<List<VehicleTrackerEntity>> getVehicleTrackerStop(
      VehicleTrackerRequest request);

  Future<VehicleTrackerEntity> getCurrentLocation();
}

@LazySingleton(as: VehicleTrackerDataSource)
@injectable
class VehicleTrackerImpl extends VehicleTrackerDataSource {
  final ApiProvider apiProvider;

  VehicleTrackerImpl(this.apiProvider);

  @override
  Future<List<VehicleTrackerEntity>> getVehicleTrackerStop(
      VehicleTrackerRequest request) async {
    final data = await apiProvider.get(AppRemoteRoutes.vehicleTrackerStops,
        body: request.toJson());
    return List<VehicleTrackerEntity>.from(
        data["resTable"].map((e) => VehicleTrackerModel.fromJson(e))).toList();
  }

  @override
  Future<VehicleTrackerEntity> getCurrentLocation() {
    // TODO: implement getCurrentLocation
    throw UnimplementedError();
  }
}
