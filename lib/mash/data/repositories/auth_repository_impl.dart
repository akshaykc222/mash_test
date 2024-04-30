import 'package:injectable/injectable.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/auth_data_source.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

import '../../domain/entities/auth/auth_response_entity.dart';

@LazySingleton(as: AuthRepository)
@injectable
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final ConnectionChecker connectionChecker;

  AuthRepositoryImpl(
    this.connectionChecker, {
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<AuthResponseEntity> login(LoginRequest request) async {
    try {
      if (await connectionChecker.isConnected) {
        final res = await authRemoteDataSource.login(request);
        await authLocalDataSource.saveUserToken(res.token);
        return res;
      } else {
        throw NetWorkException();
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
