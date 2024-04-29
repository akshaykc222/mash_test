import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/models/request/word_thought_request.dart';
import '../../../../core/api_provider.dart';
import '../routes/app_remote_routes.dart';

abstract class DashBoardDataSource {
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      WordThoughtRequest wordThoughtRequest);
}

class DashBoardDataSourceImpl extends DashBoardDataSource {
  final ApiProvider apiProvider;

  DashBoardDataSourceImpl({required this.apiProvider});

  @override
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      WordThoughtRequest wordThoughtRequest) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.wordAndThougthofTheDay, wordThoughtRequest.toJson());
    return WordThoughtsModel.fromJson(data);
  }
}
