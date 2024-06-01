import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/repositories/home_repository_impl.dart';
import 'package:mash/mash/domain/repositories/home_repository.dart';
import 'package:mockito/mockito.dart';

import '../../fixture/constant_objects.dart';
import '../../helpers/test_helpers.mocks.dart';

void main() {
  late MockHomeRemoteDataSource mockHomeRemoteDataSource;
  late HomeRepositoryImpl homeRepositoryImpl;

  setUp(() {
    mockHomeRemoteDataSource = MockHomeRemoteDataSource();
    homeRepositoryImpl =
        HomeRepositoryImpl(homeRemoteDataSource: mockHomeRemoteDataSource);
  });
  group('get add on', () {
    test('should return add on data when the remote data source successful',
        () async {
      //Arrange
      when(mockHomeRemoteDataSource.getAddon(tAddOnRequest))
          .thenAnswer((_) async => [tAddOnModel]);
      //Act
      final result = await homeRepositoryImpl.getAddon(tAddOnRequest);
      //Assert
      expect(result, [tAddOnModel]);
      verify(mockHomeRemoteDataSource.getAddon(tAddOnRequest)).called(1);
    });
    test('should throw fetch data exception if remote data source fail',
        () async {
      //Arrange
      when(mockHomeRemoteDataSource.getAddon(tAddOnRequest))
          .thenThrow(isA<FetchDataException>());

      //Act and Assert
      await expectLater(homeRepositoryImpl.getAddon(tAddOnRequest),
          isA<FetchDataException>());
    });
  });
}
