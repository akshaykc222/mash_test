import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

import '../models/auth/auth_response_model.dart';
import '../models/request/login_request.dart';

abstract class AuthDataSource {
  Future<AuthResponseEntity> login(LoginRequest request);
}

@LazySingleton(as: AuthDataSource)
@injectable
class AuthDataSourceImpl extends AuthDataSource {
  final ApiProvider apiProvider;

  AuthDataSourceImpl(this.apiProvider);

  @override
  Future<AuthResponseEntity> login(LoginRequest request) async {
    try {
      final data =
          await apiProvider.post(AppRemoteRoutes.login, request.toJson());
      log(data.toString());
      return AuthResponseModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
