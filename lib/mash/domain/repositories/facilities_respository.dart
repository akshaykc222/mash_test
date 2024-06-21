
import 'package:mash/mash/data/remote/request/get_facility_dashboard_request.dart';
import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';

abstract class FacilitiesRepository{
  Future<List<GetFacilityDashBoardEntity>>  getFacilityDashBoard(GetFacilityDashBoardRequest request);
}