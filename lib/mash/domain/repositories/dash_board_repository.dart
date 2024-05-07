import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

abstract interface class DashBoardRepository {
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
    WordThoughtRequest wordThoughtRequest,
  );
}
