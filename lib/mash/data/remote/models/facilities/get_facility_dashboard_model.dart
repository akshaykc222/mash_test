

import 'package:mash/mash/domain/entities/facilities/get_facility_dashboard_entity.dart';

class GetFacilityDashboardModel extends GetFacilityDashBoardEntity{
  const GetFacilityDashboardModel({required super.subheadName, required super.subheadId, required super.feeHeadId, required super.description, required super.feeHeadId1, required super.subStatus, required super.approvalStatus});


  factory GetFacilityDashboardModel.fromJson(Map<String, dynamic> json) {
    return GetFacilityDashboardModel(
      subheadName: json['SUBHEAD_NAME'] ?? '',
      subheadId: json['SUBHEAD_ID'] ?? '',
      feeHeadId: json['FEE_HEADID'] ?? '',
      description: json['DESCRIPTION'] ?? '',
      feeHeadId1: json['FEE_HEADID1'] ?? '',
      subStatus: json['SUB_STATUS'] ?? '',
      approvalStatus: json['APPROVAL_STATUS'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'SUBHEAD_NAME': this.subheadName,
      'SUBHEAD_ID': this.subheadId,
      'FEE_HEADID': this.feeHeadId,
      'DESCRIPTION': this.description,
      'FEE_HEADID1': this.feeHeadId1,
      'SUB_STATUS': this.subStatus,
      'APPROVAL_STATUS': this.approvalStatus,
    };
  }
}