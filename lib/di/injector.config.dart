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
    as _i18;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i17;
import '../core/hive_service.dart' as _i5;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i16;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i7;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i6;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i11;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i8;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i19;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i20;
import '../mash/data/repositories/academic_repository_impl.dart' as _i10;
import '../mash/data/repositories/auth_repository_impl.dart' as _i32;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i30;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i15;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i28;
import '../mash/data/repositories/notice_repository_impl.dart' as _i34;
import '../mash/domain/repositories/academic_repository.dart' as _i9;
import '../mash/domain/repositories/auth_repository.dart' as _i31;
import '../mash/domain/repositories/dash_board_repository.dart' as _i29;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i14;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i27;
import '../mash/domain/repositories/notice_repository.dart' as _i33;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i12;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i26;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i13;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i24;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i23;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i42;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i44;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i43;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i41;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i36;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i25;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i38;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i37;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i39;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i35;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i48;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i40;
import '../mash/presentation/manager/drawer_bloc/drawer_bloc.dart' as _i45;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i47;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i46;

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
    gh.lazySingleton<_i8.DrawerMenuItemsRemoteDataSource>(() =>
        _i8.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i9.AcademicRepository>(
        () => _i10.AcademicRepositoryImpl(gh<_i7.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i11.DashBoardRemoteDataSource>(() =>
        _i11.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.factory<_i12.GetAcademicSubjectUseCase>(() =>
        _i12.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i9.AcademicRepository>()));
    gh.factory<_i13.GetDivisionDetailsUseCase>(() =>
        _i13.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i9.AcademicRepository>()));
    gh.lazySingleton<_i14.DrawerMenuItemsRepository>(() =>
        _i15.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i8.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i16.AuthLocalDataSource>(
        () => _i16.AuthLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i17.ConnectionChecker>(
        () => _i17.ConnectionCheckerImpl(gh<_i18.InternetConnectionChecker>()));
    gh.lazySingleton<_i19.HomeWorkNotesRemoteDataSource>(() =>
        _i19.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i20.NoticeRemoteDataSource>(() =>
        _i20.NoticeRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i21.DashBoardLocalDataSource>(() =>
        _i21.DashBoardLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i22.DashBoardDataSource>(
        () => _i22.DashBoardDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i23.GetSyllabusUseCase>(() => _i23.GetSyllabusUseCase(
        academicRepository: gh<_i9.AcademicRepository>()));
    gh.lazySingleton<_i24.GetSyllabusTermsUseCase>(() =>
        _i24.GetSyllabusTermsUseCase(
            academicRepository: gh<_i9.AcademicRepository>()));
    gh.lazySingleton<_i25.GetNewsBoardUseCase>(() => _i25.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i14.DrawerMenuItemsRepository>()));
    gh.factory<_i26.GetClassInforUseCase>(
        () => _i26.GetClassInforUseCase(gh<_i9.AcademicRepository>()));
    gh.lazySingleton<_i27.HomeWorkNotesRepository>(() =>
        _i28.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i19.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i29.DashBoardRepository>(() => _i30.DashBoardRepoImpl(
          gh<_i11.DashBoardRemoteDataSource>(),
          gh<_i17.ConnectionChecker>(),
          gh<_i21.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i31.AuthRepository>(() => _i32.AuthRepositoryImpl(
          gh<_i17.ConnectionChecker>(),
          authRemoteDataSource: gh<_i6.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i16.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i33.NoticeRepository>(() => _i34.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i20.NoticeRemoteDataSource>()));
    gh.factory<_i35.GetAllNoticeUseCase>(() => _i35.GetAllNoticeUseCase(
        noticeRepository: gh<_i33.NoticeRepository>()));
    gh.factory<_i36.FetchWordThoughtUseCase>(
        () => _i36.FetchWordThoughtUseCase(gh<_i29.DashBoardRepository>()));
    gh.lazySingleton<_i37.NotesReportsUseCase>(() => _i37.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i27.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i38.HomeWorkReportsUseCase>(() =>
        _i38.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i27.HomeWorkNotesRepository>()));
    gh.factory<_i39.GetNoticeBoardPopUp>(
        () => _i39.GetNoticeBoardPopUp(gh<_i33.NoticeRepository>()));
    gh.factory<_i40.DashboardBloc>(
        () => _i40.DashboardBloc(gh<_i36.FetchWordThoughtUseCase>()));
    gh.singleton<_i41.SignOutUseCase>(
        () => _i41.SignOutUseCase(gh<_i31.AuthRepository>()));
    gh.lazySingleton<_i42.GetUserInfoUseCase>(
        () => _i42.GetUserInfoUseCase(gh<_i31.AuthRepository>()));
    gh.lazySingleton<_i43.SaveUserInfoUseCase>(
        () => _i43.SaveUserInfoUseCase(gh<_i31.AuthRepository>()));
    gh.lazySingleton<_i44.LoginUseCase>(
        () => _i44.LoginUseCase(gh<_i31.AuthRepository>()));
    gh.factory<_i45.DrawerBloc>(() => _i45.DrawerBloc(
          gh<_i25.GetNewsBoardUseCase>(),
          gh<_i42.GetUserInfoUseCase>(),
        ));
    gh.factory<_i46.NoticeBloc>(() => _i46.NoticeBloc(
          gh<_i39.GetNoticeBoardPopUp>(),
          gh<_i35.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i47.HomeWorkNotesBloc>(() => _i47.HomeWorkNotesBloc(
          gh<_i38.HomeWorkReportsUseCase>(),
          gh<_i42.GetUserInfoUseCase>(),
          gh<_i37.NotesReportsUseCase>(),
        ));
    gh.factory<_i48.AcademicBloc>(() => _i48.AcademicBloc(
          gh<_i13.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i26.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i42.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i12.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i23.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i24.GetSyllabusTermsUseCase>(),
        ));
    return this;
  }
}
