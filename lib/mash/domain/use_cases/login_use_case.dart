import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/data/repositories/auth_repository.dart';

import '../entities/auth/auth_response_entity.dart';

@injectable
class LoginUseCase extends UseCase<AuthResponseEntity, LoginRequest> {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<AuthResponseEntity> call(LoginRequest params) {
    return repository.login(params);
  }
}
