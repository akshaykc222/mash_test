import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

import '../models/auth/auth_response_model.dart';
import '../models/request/login_request.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponseEntity> login(LoginRequest request);
}

@LazySingleton(as: AuthRemoteDataSource)
@injectable
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final ApiProvider apiProvider;

  AuthRemoteDataSourceImpl(this.apiProvider);

  @override
  Future<AuthResponseEntity> login(LoginRequest request) async {
    // try {
    final data =
        await apiProvider.post(AppRemoteRoutes.login, request.toJson());
    prettyPrint(data.toString());
    return AuthResponseModel.fromJson(data);
    // } catch (e) {
    //   throw Exception(e);
    // }
  }
}
