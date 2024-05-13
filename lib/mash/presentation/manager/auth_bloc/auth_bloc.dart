import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/save_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/sign_out_use_case.dart';

import '../../../../core/custom_exception.dart';
import '../../../../core/response_classify.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';
import '../../router/app_pages.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

/// BLoC responsible for managing the authentication state.
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_Login>(_login);
    on<_SignOut>(_signOut);
  }

  /// Handles the [_Login] event by performing the login operation.
  void _login(_Login event, Emitter<AuthState> emit) async {
    emit(AuthState(
      loginResponse: ResponseClassify.loading(),
      userDetails: null,
    ));
    try {
      final res = await loginUseCase.call(event.loginRequest);
      prettyPrint("response ${res.token}");

      await Future.delayed(
        const Duration(seconds: 3),
        () {
          emit(AuthState(
            loginResponse: ResponseClassify.completed(res),
            userDetails: null,
          ));
        },
      );
    } on UnauthorisedException catch (e) {
      emit(state.copyWith(
        loginResponse: ResponseClassify.error(" $e Unauthorized"),
      ));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(
        loginResponse: ResponseClassify.error(e.toString()),
      ));
    }
  }

  /// Handles the [_SignOut] event by performing the sign out operation.
  void _signOut(_SignOut event, Emitter<AuthState> emit) {
    emit(state.copyWith(signOutResponse: ResponseClassify.loading()));
    try {
      emit(state.copyWith(
        signOutResponse:
            ResponseClassify.completed(signOutUseCase.call(NoParams())),
      ));
      GoRouter.of(event.context).pop();
      GoRouter.of(event.context).goNamed(AppPages.login);
    } catch (e) {
      emit(state.copyWith(
        signOutResponse: ResponseClassify.error(e.toString()),
      ));
    }
  }

  /// Use case for performing the login operation.
  final LoginUseCase loginUseCase = getIt<LoginUseCase>();

  /// Use case for saving user information after successful login.
  final SaveUserInfoUseCase saveUserUseCase = getIt<SaveUserInfoUseCase>();

  /// Use case for fetching user information.
  final GetUserInfoUseCase getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  /// Use case for performing the sign out operation.
  final SignOutUseCase signOutUseCase = getIt<SignOutUseCase>();

  /// Static method to retrieve the [AuthBloc] instance from the provided context.
  static AuthBloc get(context) => BlocProvider.of(context);
}
