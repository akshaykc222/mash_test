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
    as _i10;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i9;
import '../core/hive_service.dart' as _i5;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i8;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i12;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i6;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i7;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i11;
import '../mash/data/repositories/auth_repository_impl.dart' as _i18;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i16;
import '../mash/data/repositories/notice_repository_impl.dart' as _i14;
import '../mash/domain/repositories/auth_repository.dart' as _i17;
import '../mash/domain/repositories/dash_board_repository.dart' as _i15;
import '../mash/domain/repositories/notice_repository.dart' as _i13;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i23;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i19;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i20;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i21;
import '../mash/presentation/manager/notic_bloc/notice_bloc.dart' as _i22;

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
    gh.lazySingleton<_i6.AuthRemoteDataSource>(
        () => _i6.AuthRemoteDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i7.DashBoardRemoteDataSource>(() =>
        _i7.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i8.AuthLocalDataSource>(
        () => _i8.AuthLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i9.ConnectionChecker>(
        () => _i9.ConnectionCheckerImpl(gh<_i10.InternetConnectionChecker>()));
    gh.lazySingleton<_i11.NoticeRemoteDataSource>(() =>
        _i11.NoticeRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i12.DashBoardLocalDataSource>(() =>
        _i12.DashBoardLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i13.NoticeRepository>(() => _i14.NoticeRepositoryImple(
        noticeRemoteDataSource: gh<_i11.NoticeRemoteDataSource>()));
    gh.lazySingleton<_i15.DashBoardRepository>(() => _i16.DashBoardRepoImpl(
          gh<_i7.DashBoardRemoteDataSource>(),
          gh<_i9.ConnectionChecker>(),
          gh<_i12.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i17.AuthRepository>(() => _i18.AuthRepositoryImpl(
          gh<_i9.ConnectionChecker>(),
          authRemoteDataSource: gh<_i6.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i8.AuthLocalDataSource>(),
        ));
    gh.factory<_i19.FetchWordThoughtUseCase>(
        () => _i19.FetchWordThoughtUseCase(gh<_i15.DashBoardRepository>()));
    gh.factory<_i20.GetNoticeBoardPopUp>(
        () => _i20.GetNoticeBoardPopUp(gh<_i13.NoticeRepository>()));
    gh.factory<_i21.DashboardBloc>(
        () => _i21.DashboardBloc(gh<_i19.FetchWordThoughtUseCase>()));
    gh.factory<_i22.NoticeBloc>(
        () => _i22.NoticeBloc(gh<_i20.GetNoticeBoardPopUp>()));
    gh.factory<_i23.LoginUseCase>(
        () => _i23.LoginUseCase(gh<_i17.AuthRepository>()));
    return this;
  }
}
