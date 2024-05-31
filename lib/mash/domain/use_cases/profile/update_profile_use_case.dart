import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/update_profile_request.dart';
import 'package:mash/mash/domain/repositories/profile_repository.dart';

@singleton
@injectable
class UpdateProfileUseCase extends UseCase<void, UpdateProfileRequest> {
  final ProfileRepository repository;

  UpdateProfileUseCase(this.repository);

  @override
  Future<void> call(UpdateProfileRequest params) {
    return repository.updateProfile(params);
  }
}
