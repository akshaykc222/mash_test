part of 'facilities_bloc.dart';

@freezed
class FacilitiesState with _$FacilitiesState {
  const factory FacilitiesState({
    required ResponseClassify<List<GetFacilityDashBoardEntity?>> getFacilityDashBoard
  }) = _FacilitiesState;

   factory FacilitiesState.initial() => FacilitiesState(getFacilityDashBoard: ResponseClassify.initial());
}
