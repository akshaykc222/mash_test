part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {ResponseClassify<AuthResponseEntity>? loginResponse,
      LoginResTableEntity? userDetails,
      ResponseClassify<void>? signOutResponse}) = _AuthState;
  factory AuthState.initial() => AuthState(
        loginResponse: ResponseClassify.initial(),
        signOutResponse: ResponseClassify.initial(),
        userDetails: null,
      );
}
