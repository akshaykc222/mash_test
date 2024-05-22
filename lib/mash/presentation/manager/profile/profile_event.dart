part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.selectSibling({required StudentEntity student}) =
      _SelectSibling;
  const factory ProfileEvent.getSiblings() = _GetSiblings;
}
