import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late AuthLocalDataSourceImpl authLocalDataSourceImpl;
  late MockHiveService mockHiveService;
  setUp(() {
    mockHiveService = MockHiveService();
    authLocalDataSourceImpl =
        AuthLocalDataSourceImpl(hiveService: mockHiveService);
  });
  group('save token', () {
    test('should cache the token', () async {
      //Arrange
      when(mockHiveService.addBoxes(['token'], 'token'))
          .thenAnswer((_) async => Future<void>);
      //Act
      await authLocalDataSourceImpl.saveUserToken('token');

      //Assert
      verify(mockHiveService.addBoxes(['token'], 'token')).called(1);
    });
  });
}
