import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/di/injector.config.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';

import '../mash/data/local/models/login_local_model.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: true,
)
void configureDependencies() {
  getIt.registerSingleton<InternetConnectionChecker>(
      InternetConnectionChecker());
  // getIt.registerSingleton<FirebaseDatabaseMethods>(FirebaseDatabaseMethods());

  getIt.init();
  Hive.registerAdapter(WordThoughtsHiveModelAdapter());
  Hive.registerAdapter(ThoughtTableModelAdapter());
  Hive.registerAdapter(LoginLocalModelAdapter());
  Hive.registerAdapter(WordTableModelAdapter());
}
