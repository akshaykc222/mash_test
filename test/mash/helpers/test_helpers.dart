import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/connection_checker.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/academic_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/dashboard_remote_data_source.dart';
import 'package:mash/mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';
import 'package:mash/mash/domain/repositories/auth_repository.dart';
import 'package:mash/mash/domain/repositories/dash_board_repository.dart';
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    //providers
    InternetConnectionChecker,
    ApiProvider,
    ConnectionChecker,
    HiveService,

    //auth
    AuthRepository,
    AuthRemoteDataSource,
    AuthLocalDataSource,

    //dasshboard
    DashBoardRemoteDataSource,
    DashBoardRepository,
    DashBoardLocalDataSource,

    //drawer menu itesm
    DrawerMenuItemsRepository,
    DrawerMenuItemsRemoteDataSource,

    //Academics
    AcademicRepository,
    AcademicRemoteDataSource,
  ],
)
void main() {}
