import '../../data/local/models/login_local_model.dart';
import '../../data/remote/request/login_request.dart';
import '../entities/auth/auth_response_entity.dart';

abstract interface class AuthRepository {
  Future<AuthResponseEntity> login(LoginRequest request);
  /* This method used for saving user response data from successful login response */
  Future<void> saveUserInfo(LoginLocalModel userInfo);

  /* This method used for getting user data saved in hive data base .
  * if the return data type is null the will be no saved records.
  *  */
  Future<LoginResTableEntity?> getUserInfo();
  Future<void> signOut();
}
