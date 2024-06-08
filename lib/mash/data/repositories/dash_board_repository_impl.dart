import 'package:injectable/injectable.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/models/request/digital_library_request.dart';
import 'package:mash/mash/data/remote/models/request/role_menu_request.dart';
import 'package:mash/mash/domain/entities/dashboard/digital_library_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/role_menu_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

import '../remote/data_sources/dashboard_remote_data_source.dart';

/// Implementation of [DashBoardRepository] responsible for coordinating data flow
/// between remote and local data sources for dashboard-related operations.
@LazySingleton(as: DashBoardRepository)
@injectable
class DashBoardRepoImpl implements DashBoardRepository {
  final ConnectionChecker connectionChecker;
  final DashBoardRemoteDataSource dashBoardDataSource;
  final DashBoardLocalDataSource dashBoardLocalDataSource;

  /// Constructs an instance of [DashBoardRepoImpl] with the provided dependencies.
  DashBoardRepoImpl(
    this.dashBoardDataSource,
    this.connectionChecker,
    this.dashBoardLocalDataSource,
  );

  @override
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
    AcademicAndCompIdRequest wordThoughtRequest,
  ) async {
    // Check if the device is connected to the internet
    if (await connectionChecker.isConnected) {
      // Fetch word and thought of the day from the remote data source
      final result = await dashBoardDataSource
          .fetchWordandThoghtOfTheDay(wordThoughtRequest);
      // Save the fetched data to local storage
      await dashBoardLocalDataSource.saveWordandThoghtOfTheDay(result);
      return result;
    } else {
      // If device is offline, fetch data from local storage
      final result =
          await dashBoardLocalDataSource.fetchWordandThoghtOfTheDay();
      return result;
    }
  }

  @override
  Future<List<RoleMenuEntity>> getRolemenuItems(RoleMenuRequest params) async {
    return await dashBoardDataSource.getRolemenuItems(params);
  }


}
