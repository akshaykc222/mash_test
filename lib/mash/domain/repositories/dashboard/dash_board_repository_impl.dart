import 'package:dartz/dartz.dart';
import 'package:mash/core/failure.dart';
import 'package:mash/mash/data/repositories/dashboard/dash_board_repository.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

class DashBoardRepoImpl extends DashBoardRepository{
  @override
  Either<Failure, WordThoughtsEntity> fetchWordandThoghtOfTheDay() {
    // TODO: implement fetchWordandThoghtOfTheDay
    throw UnimplementedError();
  }
}