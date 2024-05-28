import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/vehicle_tracker_request.dart';
import 'package:mash/mash/domain/entities/vehicle_tracker/vehicle_tracker_entity.dart';
import 'package:mash/mash/domain/repositories/vehicle_tracker_repository.dart';

@lazySingleton
@injectable
class GetVehicleTrackerStopsUseCase extends UseCase<List<VehicleTrackerEntity>,VehicleTrackerRequest>{
  final VehicleTrackerRepository repository;

  GetVehicleTrackerStopsUseCase(this.repository);

  @override
  Future<List<VehicleTrackerEntity>> call(VehicleTrackerRequest params) {
    return repository.getStudentVehicleStops(params);
  }
}