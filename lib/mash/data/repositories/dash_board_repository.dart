import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

abstract class DashBoardRepository {
  Future<WordThoughtsEntity> fetchWordandThoghtOfTheDay();
}
