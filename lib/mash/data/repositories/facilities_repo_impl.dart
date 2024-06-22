

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/facility_data_source.dart';
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';
import 'package:mash/mash/domain/repositories/facilities_respository.dart';

@LazySingleton(as: FacilitiesRepository)
@injectable
class FacilitiesRepositoryImpl implements FacilitiesRepository {
  final FacilityDataSource facilityDataSource;

  FacilitiesRepositoryImpl({required this.facilityDataSource});

  @override
  Future<List<GetFacilityDashBoardEntity>> getFacilityDashBoard(GetFacilityDashBoardRequest request) {
    return facilityDataSource.getFacilityDashBoard(request);
  }

}
