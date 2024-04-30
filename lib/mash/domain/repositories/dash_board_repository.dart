import 'package:mash/mash/data/remote/models/request/word_thought_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

abstract class DashBoardRepository {
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
    WordThoughtRequest wordThoughtRequest,
  );
}
