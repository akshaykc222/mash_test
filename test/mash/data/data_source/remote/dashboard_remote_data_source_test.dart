import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/remote/data_sources/dashboard_remote_data_source.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late ApiProvider mockApiProvider;
  late DashBoardRemoteDataSourceImpl dashBoardRemoteDataSourceImpl;
  setUp(() {
    mockApiProvider = MockApiProvider();
    dashBoardRemoteDataSourceImpl =
        DashBoardRemoteDataSourceImpl(apiProvider: mockApiProvider);
  });
  group('get dash board datas', () {
    test('should perform a POST request to the correct url', () async {
      //Arrange
      const expectedUrl = AppRemoteRoutes.wordAndThougthofTheDay;
      final fakeResponse =
          json.decode(fixture('dashboard/word_thought_response.json'));
      when(mockApiProvider.post(expectedUrl, tWordThoughtRequest.toJson()))
          .thenAnswer((_) async => fakeResponse);
      //Act
      final result = await dashBoardRemoteDataSourceImpl
          .fetchWordandThoghtOfTheDay(tWordThoughtRequest);
      //Assert
      verify(mockApiProvider.post(expectedUrl, tWordThoughtRequest.toJson()));
      expect(result, isA<WordThoughtsModel>());
    });
    test('should throw a ServerFailure on non-200 status code', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.wordAndThougthofTheDay;

      when(mockApiProvider.post(expectedUrl, tWordThoughtRequest.toJson()))
          .thenThrow(FetchDataException(
              'test error found')); // Throw FetchDataException when post is called
      // Act
      final result = dashBoardRemoteDataSourceImpl
          .fetchWordandThoghtOfTheDay(tWordThoughtRequest);
      // prettyPrint("reslt of error test${result.toString()}");
      // Assert
      expect(result, throwsA(isA<FetchDataException>()));
    });
  });
}