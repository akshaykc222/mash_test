import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/domain/entities/auth_response_entity.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

import '../models/auth_response_model.dart';
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
    final data = await apiProvider.post(AppPages.login, request.toJson());
    return AuthResponseModel.fromJson(data);
  }
}
