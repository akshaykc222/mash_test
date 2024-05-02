import 'package:injectable/injectable.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

abstract class DashBoardLocalDataSource {
  Future<WordThoughtsHiveModel?> fetchWordandThoghtOfTheDay();
  Future<void> saveWordandThoghtOfTheDay(WordThoughtsEntity wordThoughtsModel);
}

@LazySingleton(as: DashBoardLocalDataSource)
@injectable
class DashBoardLocalDataSourceImpl extends DashBoardLocalDataSource {
  final HiveService hiveService;

  DashBoardLocalDataSourceImpl({required this.hiveService});

  @override
  Future<WordThoughtsHiveModel?> fetchWordandThoghtOfTheDay() async {
    final result = await hiveService.getBox<WordThoughtsHiveModel>(
        boxName: LocalStorageNames.dashBoard);

    return result.isEmpty ? null : result.values.first;
  }

  @override
  Future<void> saveWordandThoghtOfTheDay(
      WordThoughtsEntity wordThoughtsModel) async {
    await hiveService
        .clearAllValues<WordThoughtsHiveModel>(LocalStorageNames.dashBoard);
    hiveService.addBoxes<WordThoughtsHiveModel>(
        [WordThoughtsHiveModel.fromEnity(wordThoughtsModel)],
        LocalStorageNames.dashBoard);
  }
}
