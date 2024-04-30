// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i7;
import '../core/hive_service.dart' as _i5;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i11;
import '../mash/data/remote/data_sources/auth_data_source.dart' as _i6;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i12;
import '../mash/data/repositories/auth_repository_impl.dart' as _i10;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i14;
import '../mash/domain/repositories/auth_repository.dart' as _i9;
import '../mash/domain/repositories/dash_board_repository.dart' as _i13;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i15;
import '../mash/domain/use_cases/dashboard/fetch_word_thought.dart' as _i16;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i17;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
    gh.singleton<_i4.ApiProvider>(() => _i4.ApiProvider());
    gh.lazySingleton<_i5.HiveService>(() => _i5.HiveService());
    gh.lazySingleton<_i6.AuthDataSource>(
        () => _i6.AuthDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i7.ConnectionChecker>(
        () => _i7.ConnectionCheckerImpl(gh<_i8.InternetConnectionChecker>()));
    gh.lazySingleton<_i9.AuthRepository>(
        () => _i10.AuthRepositoryImpl(gh<_i6.AuthDataSource>()));
    gh.lazySingleton<_i11.DashBoardLocalDataSource>(() =>
        _i11.DashBoardLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i12.DashBoardDataSource>(
        () => _i12.DashBoardDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i13.DashBoardRepository>(() => _i14.DashBoardRepoImpl(
          gh<_i12.DashBoardDataSource>(),
          gh<_i7.ConnectionChecker>(),
          gh<_i11.DashBoardLocalDataSource>(),
        ));
    gh.factory<_i15.LoginUseCase>(
        () => _i15.LoginUseCase(gh<_i9.AuthRepository>()));
    gh.factory<_i16.FetchWordThoughtUseCase>(
        () => _i16.FetchWordThoughtUseCase(gh<_i13.DashBoardRepository>()));
    gh.factory<_i17.DashboardBloc>(
        () => _i17.DashboardBloc(gh<_i16.FetchWordThoughtUseCase>()));
    return this;
  }
}
