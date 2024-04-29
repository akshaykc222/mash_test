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
    as _i7;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i6;
import '../mash/data/remote/data_sources/auth/auth_data_source.dart' as _i5;
import '../mash/data/repositories/auth/auth_repository.dart' as _i8;
import '../mash/domain/repositories/auth_repository_impl.dart' as _i9;
import '../mash/domain/use_cases/login_use_case.dart' as _i10;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;

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
    gh.lazySingleton<_i5.AuthDataSource>(
        () => _i5.AuthDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i6.ConnectionChecker>(
        () => _i6.ConnectionCheckerImpl(gh<_i7.InternetConnectionChecker>()));
    gh.lazySingleton<_i8.AuthRepository>(
        () => _i9.AuthRepositoryImpl(gh<_i5.AuthDataSource>()));
    gh.factory<_i10.LoginUseCase>(
        () => _i10.LoginUseCase(gh<_i8.AuthRepository>()));
    return this;
  }
}
