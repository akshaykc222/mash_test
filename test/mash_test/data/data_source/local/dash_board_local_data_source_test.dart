import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockHiveService mockHiveService;
  late DashBoardLocalDataSource dashBoardLocalDataSource;

  setUp(() {
    mockHiveService = MockHiveService();
    dashBoardLocalDataSource =
        DashBoardLocalDataSourceImpl(hiveService: mockHiveService);
  });
  group('get word thought', () {
    test('should return word thought hive model from hive', () async {
      final data = WordThoughtsHiveModel.fromEntity(tWordThoughtModel);
      //Arrange
      when(mockHiveService
              .getBoxes<WordTableHiveModel>(LocalStorageNames.dashBoard))
          .thenAnswer((_) async => Future.value([data]));
      //Act
      final result =
          await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
      //Assert
      expect(result, data);
    });
  });
  group("save word thougt", () {
    test('should call when save word thoughts in hive', () async {
      //Arrange

      when(mockHiveService
          .addBoxes([twordThoughtsHiveModel], LocalStorageNames.dashBoard));
      when(mockHiveService.clearAllValues<WordThoughtsHiveModel>(
              LocalStorageNames.dashBoard))
          .thenAnswer((_) async => Future<void>);

      //Act
      await dashBoardLocalDataSource.saveWordandThoghtOfTheDay(
          WordThoughtsHiveModel.fromEntity(tWordThoughtModel));

      //Assert
      verify(mockHiveService
              .addBoxes([twordThoughtsHiveModel], LocalStorageNames.dashBoard))
          .called(1);
    });
  });
}
