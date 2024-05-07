part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required LoginRequest loginRequest,
    required BuildContext context,
  }) = _Login;
  const factory AuthEvent.getUser() = _GetUser;
}
