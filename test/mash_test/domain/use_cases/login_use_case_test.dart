import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/request/login_request.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helpers.mocks.dart';

void main() {
  late LoginUseCase loginUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase(mockAuthRepository);
  });

  const response = AuthResponseEntity(
    statusMessage: '',
    resTable: [],
    statusCode: 100,
    token: '',
  );

  test('should get the login response from the repository', () async {
    // Arrange
    final loginRequest = LoginRequest(
      userId: 'user123',
      password: 'password123',
      deviceId: 'device123',
      appType: 'app123',
    );

    // Mock behavior: when login is called, return the predefined response
    when(mockAuthRepository.login(loginRequest))
        .thenAnswer((_) async => response);

    // Act
    final result = await loginUseCase.call(loginRequest);

    // Assert
    expect(result, response);
    verify(mockAuthRepository.login(loginRequest)).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
