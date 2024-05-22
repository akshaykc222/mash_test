part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {ResponseClassify<List<StudentEntity>>? getSiblings,
      StudentEntity? selectedSibling}) = _ProfileState;
  factory ProfileState.initial() => const ProfileState();
}
