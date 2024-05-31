import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/models/dashboard/digital_library_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/role_menu_model.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/digital_library_request.dart';
import 'package:mash/mash/data/remote/request/role_menu_request.dart';
import 'package:mash/mash/domain/entities/dashboard/digital_library_entity.dart';

import '../../../../core/api_provider.dart';
import '../routes/app_remote_routes.dart';

/// Remote data source interface for fetching dashboard-related data.
abstract class DashBoardRemoteDataSource {
  /// Fetches the word and thought of the day from the remote data source.

  /// Returns a [WordThoughtsModel] representing the word and thought of the day.

  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest);
  Future<List<RoleMenuModel>> getRolemenuItems(RoleMenuRequest params);
  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request);
}

/// Implementation of the [DashBoardRemoteDataSource] interface.
@LazySingleton(as: DashBoardRemoteDataSource)
@injectable
class DashBoardRemoteDataSourceImpl extends DashBoardRemoteDataSource {
  final ApiProvider apiProvider;

  DashBoardRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest) async {
    final data = await apiProvider.get(AppRemoteRoutes.wordAndThougthofTheDay,
        body: wordThoughtRequest.toJson());

    return WordThoughtsModel.fromJson(data);
  }

  @override
  Future<List<RoleMenuModel>> getRolemenuItems(RoleMenuRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.roleMenu, body: params.toJson());
    final List<dynamic> dataList = data['resTable'];
    final result = dataList.map((e) => RoleMenuModel.fromjson(e)).toList();
    return result;
  }

  @override
  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request) async {
    final data = await apiProvider.get(AppRemoteRoutes.digitalLibrary,
        body: request.toJson());
    return List<DigitalLibraryEntity>.from(
        data['resTable'].map((e) => DigitalLibraryModel.fromJson(e))).toList();
  }
}
