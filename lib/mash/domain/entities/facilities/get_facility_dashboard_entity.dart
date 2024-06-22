import 'package:equatable/equatable.dart';

class GetFacilityDashBoardEntity extends Equatable {
  final String? subheadName;
  final String? subheadId;
  final String? feeHeadId;
  final String? description;
  final String? feeHeadId1;
  final String? subStatus;
  final String? approvalStatus;

  const GetFacilityDashBoardEntity(
      {required this.subheadName,
      required this.subheadId,
      required this.feeHeadId,
      required this.description,
      required this.feeHeadId1,
      required this.subStatus,
      required this.approvalStatus});

  @override
  // TODO: implement props
  List<Object?> get props => [
        subheadName,
        subheadId,
        feeHeadId,
        description,
        feeHeadId1,
        subStatus,
        approvalStatus
      ];
}
