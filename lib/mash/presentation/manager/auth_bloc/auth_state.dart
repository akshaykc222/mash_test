part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
          {required ResponseClassify<AuthResponseEntity> loginResponse}) =
      _AuthState;
  factory AuthState.initial() =>
      AuthState(loginResponse: ResponseClassify.initial());
}
