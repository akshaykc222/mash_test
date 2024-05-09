import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import '../../../../core/api_provider.dart';
import '../routes/app_remote_routes.dart';

abstract class DashBoardRemoteDataSource {
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest);
}

@LazySingleton(as: DashBoardRemoteDataSource)
@injectable
class DashBoardRemoteDataSourceImpl extends DashBoardRemoteDataSource {
  final ApiProvider apiProvider;

  DashBoardRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<WordThoughtsModel> fetchWordandThoghtOfTheDay(
      AcademicAndCompIdRequest wordThoughtRequest) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.wordAndThougthofTheDay, wordThoughtRequest.toJson());
    return WordThoughtsModel.fromJson(data);
  }
}
