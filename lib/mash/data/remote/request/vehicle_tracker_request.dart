class VehicleTrackerRequest {
  final String companyId;

  VehicleTrackerRequest({
    required this.companyId,
  });


  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
    };
  }
}
