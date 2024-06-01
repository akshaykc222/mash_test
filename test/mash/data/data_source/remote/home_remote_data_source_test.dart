import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/remote/data_sources/home_remote_data_source.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockApiProvider mockApiProvider;
  late HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  setUp(() {
    mockApiProvider = MockApiProvider();
    homeRemoteDataSourceImpl =
        HomeRemoteDataSourceImpl(apiProvider: mockApiProvider);
  });
  group('get addon', () {
    test('get add on', () async {
      //Arrange
      const expectedUrl = AppRemoteRoutes.addON;
      final request = tAddOnRequest;
      final addOnResponseJson =
          jsonDecode(fixture('home/add_on_response.json'));

      final fakeResponse = {
        "statusCode": 200,
        "statusMessage": "SUCCESS",
        "resTable": [
          addOnResponseJson,
        ]
      };
      when(mockApiProvider.get(expectedUrl, body: request.toJson()))
          .thenAnswer((_) async => fakeResponse);
      //Act
      final result = await homeRemoteDataSourceImpl.getAddon(request);

      //Aseert
      expect(result, [tAddOnModel]);
    });
    test('should throw a server failure on non-200 status code', () async {
      // Arrange
      const expectedUrl = AppRemoteRoutes.addON;
      when(mockApiProvider.get(expectedUrl, body: tAddOnRequest.toJson()))
          .thenThrow(FetchDataException('test error found'));

      // Act
      final call = homeRemoteDataSourceImpl.getAddon(tAddOnRequest);

      // Assert
      expectLater(() => call, throwsA(isA<FetchDataException>()));
    });
  });
}
