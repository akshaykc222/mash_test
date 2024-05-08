import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
import 'package:mash/mash/domain/use_cases/auth/save_user_info_use_case.dart';

import '../../../../core/response_classify.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_Login>(_login);
  }

  _login(AuthEvent event, Emitter<AuthState> emit) async {
    emit(AuthState(loginResponse: ResponseClassify.loading()));
    // try {
    final res = await loginUseCase.call(event.loginRequest);
    prettyPrint("response ${res.token}");

    await Future.delayed(
      const Duration(seconds: 3),
      () {
        emit(AuthState(loginResponse: ResponseClassify.completed(res)));
      },
    );
    // } on UnauthorisedException catch (e) {
    // handleUnAuthorizedError();
    // emit(state.copyWith(
    //     loginResponse: ResponseClassify.error(" $e Un authorized")));
    // } catch (e) {
    //   prettyPrint(e.toString());
    //   emit(state.copyWith(loginResponse: ResponseClassify.error(e.toString())));
    // }
  }

  /*
    This function is responsible for saving user response from the successfully login
   */
  saveUserInfo(LoginResTableEntity entity) async {
    await saveUserUseCase.call(LoginLocalModel.fromEntity(entity));
  }

  getUserInfo() {
    getUserInfoUseCase.call(NoParams());
  }

  //use cases

  final loginUseCase = getIt<LoginUseCase>();
  final saveUserUseCase = getIt<SaveUserInfoUseCase>();
  final getUserInfoUseCase = getIt<GetUserInfoUseCase>();

  static AuthBloc get(context) => BlocProvider.of(context);
}
