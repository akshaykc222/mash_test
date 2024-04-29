import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/auth/auth_data_source.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/data/repositories/auth/auth_repository.dart';

import '../entities/auth/auth_response_entity.dart';

@LazySingleton(as: AuthRepository)
@injectable
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Future<AuthResponseEntity> login(LoginRequest request) {
    return dataSource.login(request);
  }
}
