import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  // initializerName: 'init', // default
  preferRelativeImports: true, // default
  // asExtension: true, // default
)
void configureDependencies() {
  getIt.registerSingleton<InternetConnectionChecker>(
      InternetConnectionChecker());
  getIt.init();
  Hive.registerAdapter(WordThoughtsHiveModelAdapter());
  Hive.registerAdapter(ThoughtTableModelAdapter());
  Hive.registerAdapter(WordTableModelAdapter());
}
