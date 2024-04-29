import '../../domain/entities/auth/auth_response_entity.dart';
import '../remote/models/request/login_request.dart';

abstract class AuthRepository {
  Future<AuthResponseEntity> login(LoginRequest request);
  // Either<Failure, >
}
