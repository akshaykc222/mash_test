 
import 'package:dartz/dartz.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';

import '../../../../../core/api_provider.dart';
import '../../../../../core/failure.dart';
import '../../../../domain/entities/dashboard/word_thought_entity.dart';
import '../../routes/app_remote_routes.dart';

abstract class DashBoardDataSource{
    Either<Failure, WordThoughtsModel> fetchWordandThoghtOfTheDay();

}
class DataSourceImpl extends DashBoardDataSource{
  @override
  Either<Failure, WordThoughtsModel> fetchWordandThoghtOfTheDay() async{
      final ApiProvider apiProvider;

      final ApiProvider apiProvider;
   final data =
        await apiProvider.post(AppRemoteRoutes.wordAndThougthofTheDay  );
return WordThoughtsModel.fromJson(data);
  
  }
  
}