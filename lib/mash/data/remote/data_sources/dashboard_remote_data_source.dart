import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import '../../../../core/api_provider.dart';
import '../routes/app_remote_routes.dart';

/// Remote data source interface for fetching dashboard-related data.
abstract class DashBoardRemoteDataSource {
  /// Fetches the word and thought of the day from the remote data source.

  /// Returns a [WordThoughtsModel] representing the word and thought of the day.

  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest);
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
}
