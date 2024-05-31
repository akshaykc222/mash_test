import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/digital_library_request.dart';
import 'package:mash/mash/domain/entities/dashboard/digital_library_entity.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';

@singleton
@injectable
class DigitalLibraryUseCase
    extends UseCase<List<DigitalLibraryEntity>, DigitalLibraryRequest> {
  final DashBoardRepository repository;

  DigitalLibraryUseCase(this.repository);

  @override
  Future<List<DigitalLibraryEntity>> call(DigitalLibraryRequest params) {
    return repository.getDigitalLibrary(params);
  }
}
