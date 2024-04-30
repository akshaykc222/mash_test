import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/word_thought_request.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

@injectable
class FetchWordThoughtUseCase
    extends UseCase<WordThoughtsEntity?, WordThoughtRequest> {
  final DashBoardRepository dashBoardRepository;

  FetchWordThoughtUseCase(this.dashBoardRepository);
  @override
  Future<WordThoughtsEntity?> call(WordThoughtRequest params) {
    return dashBoardRepository.fetchWordandThoghtOfTheDay(params);
  }
}
