import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';

@singleton
@injectable
class SignOutUseCase extends UseCase<void, NoParams> {
  final AuthRepository repository;

  SignOutUseCase(this.repository);

  @override
  Future<void> call(NoParams params) {
    return repository.signOut();
  }
}
