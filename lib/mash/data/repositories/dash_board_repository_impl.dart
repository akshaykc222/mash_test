import 'package:injectable/injectable.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/remote/models/request/word_thought_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

import '../remote/data_sources/dashboard_remote_data_source.dart';

@LazySingleton(as: DashBoardRepository)
@injectable
class DashBoardRepoImpl extends DashBoardRepository {
  final ConnectionChecker connectionChecker;
  final DashBoardRemoteDataSource dashBoardDataSource;
  final DashBoardLocalDataSource dashBoardLocalDataSource;

  DashBoardRepoImpl(this.dashBoardDataSource, this.connectionChecker,
      this.dashBoardLocalDataSource);
  @override
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
      WordThoughtRequest wordThoughtRequest) async {
    if (await connectionChecker.isConnected) {
      final result = await dashBoardDataSource
          .fetchWordandThoghtOfTheDay(wordThoughtRequest);
      await dashBoardLocalDataSource.saveWordandThoghtOfTheDay(result);

      return result;
    } else {
      final result =
          await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
      return result;
    }
  }
}
