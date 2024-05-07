import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    AuthRepository,
    InternetConnectionChecker,
    ApiProvider,
    AuthRemoteDataSource,
    AuthLocalDataSource,
    ConnectionChecker,
    HiveService,
  ],
)
void main() {}
