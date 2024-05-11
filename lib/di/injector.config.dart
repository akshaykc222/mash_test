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
    as _i15;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i14;
import '../core/hive_service.dart' as _i5;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i13;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i7;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i6;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i10;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i16;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i17;
import '../mash/data/repositories/academic_repository_impl.dart' as _i9;
import '../mash/data/repositories/auth_repository_impl.dart' as _i26;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i24;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i22;
import '../mash/data/repositories/notice_repository_impl.dart' as _i28;
import '../mash/domain/repositories/academic_repository.dart' as _i8;
import '../mash/domain/repositories/auth_repository.dart' as _i25;
import '../mash/domain/repositories/dash_board_repository.dart' as _i23;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i21;
import '../mash/domain/repositories/notice_repository.dart' as _i27;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i11;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i20;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i12;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i36;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i38;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i37;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i35;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i30;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i31;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i32;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i33;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i29;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i41;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i34;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i40;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i39;

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
    gh.lazySingleton<_i7.AcademicRemoteDataSource>(
        () => _i7.AcademicRemoteDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i8.AcademicRepository>(
        () => _i9.AcademicRepositoryImpl(gh<_i7.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i10.DashBoardRemoteDataSource>(() =>
        _i10.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.factory<_i11.GetAcademicSubjectUseCase>(() =>
        _i11.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i8.AcademicRepository>()));
    gh.factory<_i12.GetDivisionDetailsUseCase>(() =>
        _i12.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i8.AcademicRepository>()));
    gh.lazySingleton<_i13.AuthLocalDataSource>(
        () => _i13.AuthLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i14.ConnectionChecker>(
        () => _i14.ConnectionCheckerImpl(gh<_i15.InternetConnectionChecker>()));
    gh.lazySingleton<_i16.HomeWorkNotesRemoteDataSource>(() =>
        _i16.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i17.NoticeRemoteDataSource>(() =>
        _i17.NoticeRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i18.DashBoardLocalDataSource>(() =>
        _i18.DashBoardLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i19.DashBoardDataSource>(
        () => _i19.DashBoardDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.factory<_i20.GetClassInforUseCase>(
        () => _i20.GetClassInforUseCase(gh<_i8.AcademicRepository>()));
    gh.lazySingleton<_i21.HomeWorkNotesRepository>(() =>
        _i22.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i16.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i23.DashBoardRepository>(() => _i24.DashBoardRepoImpl(
          gh<_i10.DashBoardRemoteDataSource>(),
          gh<_i14.ConnectionChecker>(),
          gh<_i18.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i25.AuthRepository>(() => _i26.AuthRepositoryImpl(
          gh<_i14.ConnectionChecker>(),
          authRemoteDataSource: gh<_i6.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i13.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i27.NoticeRepository>(() => _i28.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i17.NoticeRemoteDataSource>()));
    gh.factory<_i29.GetAllNoticeUseCase>(() => _i29.GetAllNoticeUseCase(
        noticeRepository: gh<_i27.NoticeRepository>()));
    gh.factory<_i30.FetchWordThoughtUseCase>(
        () => _i30.FetchWordThoughtUseCase(gh<_i23.DashBoardRepository>()));
    gh.lazySingleton<_i31.HomeWorkReportsUseCase>(() =>
        _i31.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i21.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i32.NotesReportsUseCase>(() => _i32.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i21.HomeWorkNotesRepository>()));
    gh.factory<_i33.GetNoticeBoardPopUp>(
        () => _i33.GetNoticeBoardPopUp(gh<_i27.NoticeRepository>()));
    gh.factory<_i34.DashboardBloc>(
        () => _i34.DashboardBloc(gh<_i30.FetchWordThoughtUseCase>()));
    gh.singleton<_i35.SignOutUseCase>(
        () => _i35.SignOutUseCase(gh<_i25.AuthRepository>()));
    gh.lazySingleton<_i36.GetUserInfoUseCase>(
        () => _i36.GetUserInfoUseCase(gh<_i25.AuthRepository>()));
    gh.lazySingleton<_i37.SaveUserInfoUseCase>(
        () => _i37.SaveUserInfoUseCase(gh<_i25.AuthRepository>()));
    gh.lazySingleton<_i38.LoginUseCase>(
        () => _i38.LoginUseCase(gh<_i25.AuthRepository>()));
    gh.factory<_i39.NoticeBloc>(() => _i39.NoticeBloc(
          gh<_i33.GetNoticeBoardPopUp>(),
          gh<_i29.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i40.HomeWorkNotesBloc>(() => _i40.HomeWorkNotesBloc(
          gh<_i31.HomeWorkReportsUseCase>(),
          gh<_i36.GetUserInfoUseCase>(),
          gh<_i32.NotesReportsUseCase>(),
        ));
    gh.factory<_i41.AcademicBloc>(() => _i41.AcademicBloc(
          gh<_i12.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i20.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i36.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i11.GetAcademicSubjectUseCase>(),
        ));
    return this;
  }
}
