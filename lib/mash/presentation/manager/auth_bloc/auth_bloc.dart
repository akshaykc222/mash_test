import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/domain/use_cases/login_use_case.dart';

import '../../../../core/custom_exception.dart';
import '../../../../core/response_classify.dart';
import '../../../domain/entities/auth_response_entity.dart';
import '../../utils/app_constants.dart';

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
    try {
      final res = await loginUseCase.call(event.loginRequest);
      prettyPrint("response ${res.token}");

      await Future.delayed(
        Duration(seconds: 3),
        () {
          emit(AuthState(loginResponse: ResponseClassify.completed(res)));
        },
      );
    } on UnauthorisedException catch (e) {
      handleUnAuthorizedError();
      emit(state.copyWith(
          loginResponse: ResponseClassify.error("Un authorized")));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(loginResponse: ResponseClassify.error(e.toString())));
    }
  }

  //use cases

  final loginUseCase = getIt<LoginUseCase>();
  static AuthBloc get(context) => BlocProvider.of(context);
}
