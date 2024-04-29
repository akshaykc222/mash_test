import 'package:dartz/dartz.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

import '../../../../core/failure.dart';

abstract class DashBoardRepository {
  Either<Failure, WordThoughtsEntity> fetchWordandThoghtOfTheDay();
}
