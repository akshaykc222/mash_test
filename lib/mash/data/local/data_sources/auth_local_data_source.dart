import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';

import '../../../../core/hive_service.dart';

abstract class AuthLocalDataSource {
  Future<void> saveUserToken(String token);
}

@LazySingleton(as: AuthLocalDataSource)
@injectable
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final HiveService hiveService;

  AuthLocalDataSourceImpl({required this.hiveService});

  @override
  Future<void> saveUserToken(String token) async {
    try {
      await Future.wait([
        hiveService.clearAllValues<String>(LocalStorageNames.token),
        hiveService.addBoxes([token], LocalStorageNames.token)
      ]);
    } catch (e) {
      throw Exception(e);
    }
  }
}
