import '../../domain/entities/auth_response_entity.dart';
import '../remote/models/request/login_request.dart';

abstract class AuthRepository {
  Future<AuthResponseEntity> login(LoginRequest request);
}
