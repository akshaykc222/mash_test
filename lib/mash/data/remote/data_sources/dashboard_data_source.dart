import 'package:dartz/dartz.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';

import '../../../../core/api_provider.dart';
import '../../../../core/failure.dart';
import '../../../domain/entities/dashboard/word_thought_entity.dart';
import '../routes/app_remote_routes.dart';

abstract class DashBoardDataSource {
   Future<Either<Failure, WordThoughtsModel>> fetchWordandThoghtOfTheDay();
}

class DashBoardDataSourceImpl extends DashBoardDataSource {
      final ApiProvider apiProvider;

  DashBoardDataSourceImpl({required this.apiProvider});

  @override
  Future<Either<Failure, WordThoughtsModel>> fetchWordandThoghtOfTheDay() async {
    

    final data = await apiProvider.post(formBody: , AppRemoteRoutes.wordAndThougthofTheDay);
  return Right(WordThoughtsModel.fromJson(data));
  }
}
