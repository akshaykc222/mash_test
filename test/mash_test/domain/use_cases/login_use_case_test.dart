import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/data/repositories/auth_repository.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/use_cases/login_use_case.dart';
import 'package:mockito/mockito.dart';

class MockAuthRepository extends Mock implements AuthRepository {
  @override
  Future<AuthResponseEntity> login(LoginRequest request) {
    return Future.value(const AuthResponseEntity(
      statusMessage: '',
      resTable: [],
      statusCode: 100,
      token: '',
    ));
  }
}

class MockLoginRequest extends Mock implements LoginRequest {}

void main() {
  late LoginUseCase loginUseCase;
  late MockAuthRepository mockAuthRepository;
  late LoginRequest loginRequest;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase(mockAuthRepository);
    loginRequest = LoginRequest(
      userId: 'user123',
      password: 'password123',
      deviceId: 'device123',
      appType: 'app123',
    );
  });

  const response = AuthResponseEntity(
    statusMessage: '',
    resTable: [],
    statusCode: 100,
    token: '',
  );

  test('should get the login response from the repository', () async {
    // Arrange
    when(mockAuthRepository.login(loginRequest));

    // Act
    final result = await loginUseCase.call(loginRequest);

    // Assert
    expect(result, response);
    // verify(mockAuthRepository.login(loginRequest)).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
