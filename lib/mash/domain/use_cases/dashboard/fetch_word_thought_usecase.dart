import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

import '../../../data/remote/models/request/academic_comp_id_request.dart';

@injectable
@LazySingleton(as: UseCase)
class FetchWordThoughtUseCase
    extends UseCase<WordThoughtsEntity?, WordThoughtRequest> {
  final DashBoardRepository dashBoardRepository;

  FetchWordThoughtUseCase(this.dashBoardRepository);
  @override
  Future<WordThoughtsEntity?> call(WordThoughtRequest params) {
    return dashBoardRepository.fetchWordandThoghtOfTheDay(params);
  }
}
