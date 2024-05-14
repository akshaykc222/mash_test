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
    as _i9;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i6;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i13;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i10;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i19;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i20;
import '../mash/data/repositories/academic_repository_impl.dart' as _i12;
import '../mash/data/repositories/auth_repository_impl.dart' as _i30;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i28;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i26;
import '../mash/data/repositories/notice_repository_impl.dart' as _i32;
import '../mash/domain/repositories/academic_repository.dart' as _i11;
import '../mash/domain/repositories/auth_repository.dart' as _i29;
import '../mash/domain/repositories/dash_board_repository.dart' as _i27;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i8;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i25;
import '../mash/domain/repositories/notice_repository.dart' as _i31;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i14;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i24;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i15;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i47;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i23;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i40;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i42;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i41;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i39;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i34;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i7;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i36;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i35;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i37;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i33;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i46;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i38;
import '../mash/presentation/manager/drawer_bloc/drawer_bloc.dart' as _i43;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i45;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i44;

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
    gh.lazySingleton<_i7.GetNewsBoardUseCase>(() => _i7.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i8.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i9.AcademicRemoteDataSource>(
        () => _i9.AcademicRemoteDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i10.DrawerMenuItemsRemoteDataSource>(() =>
        _i10.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i11.AcademicRepository>(
        () => _i12.AcademicRepositoryImpl(gh<_i9.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i13.DashBoardRemoteDataSource>(() =>
        _i13.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.factory<_i14.GetAcademicSubjectUseCase>(() =>
        _i14.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i11.AcademicRepository>()));
    gh.factory<_i15.GetDivisionDetailsUseCase>(() =>
        _i15.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i11.AcademicRepository>()));
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
        academicRepository: gh<_i11.AcademicRepository>()));
    gh.factory<_i24.GetClassInforUseCase>(
        () => _i24.GetClassInforUseCase(gh<_i11.AcademicRepository>()));
    gh.lazySingleton<_i25.HomeWorkNotesRepository>(() =>
        _i26.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i19.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i27.DashBoardRepository>(() => _i28.DashBoardRepoImpl(
          gh<_i13.DashBoardRemoteDataSource>(),
          gh<_i17.ConnectionChecker>(),
          gh<_i21.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i29.AuthRepository>(() => _i30.AuthRepositoryImpl(
          gh<_i17.ConnectionChecker>(),
          authRemoteDataSource: gh<_i6.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i16.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i31.NoticeRepository>(() => _i32.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i20.NoticeRemoteDataSource>()));
    gh.factory<_i33.GetAllNoticeUseCase>(() => _i33.GetAllNoticeUseCase(
        noticeRepository: gh<_i31.NoticeRepository>()));
    gh.factory<_i34.FetchWordThoughtUseCase>(
        () => _i34.FetchWordThoughtUseCase(gh<_i27.DashBoardRepository>()));
    gh.lazySingleton<_i35.NotesReportsUseCase>(() => _i35.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i25.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i36.HomeWorkReportsUseCase>(() =>
        _i36.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i25.HomeWorkNotesRepository>()));
    gh.factory<_i37.GetNoticeBoardPopUp>(
        () => _i37.GetNoticeBoardPopUp(gh<_i31.NoticeRepository>()));
    gh.factory<_i38.DashboardBloc>(
        () => _i38.DashboardBloc(gh<_i34.FetchWordThoughtUseCase>()));
    gh.singleton<_i39.SignOutUseCase>(
        () => _i39.SignOutUseCase(gh<_i29.AuthRepository>()));
    gh.lazySingleton<_i40.GetUserInfoUseCase>(
        () => _i40.GetUserInfoUseCase(gh<_i29.AuthRepository>()));
    gh.lazySingleton<_i41.SaveUserInfoUseCase>(
        () => _i41.SaveUserInfoUseCase(gh<_i29.AuthRepository>()));
    gh.lazySingleton<_i42.LoginUseCase>(
        () => _i42.LoginUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i43.DrawerBloc>(() => _i43.DrawerBloc(
          gh<_i7.GetNewsBoardUseCase>(),
          gh<_i40.GetUserInfoUseCase>(),
        ));
    gh.factory<_i44.NoticeBloc>(() => _i44.NoticeBloc(
          gh<_i37.GetNoticeBoardPopUp>(),
          gh<_i33.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i45.HomeWorkNotesBloc>(() => _i45.HomeWorkNotesBloc(
          gh<_i36.HomeWorkReportsUseCase>(),
          gh<_i40.GetUserInfoUseCase>(),
          gh<_i35.NotesReportsUseCase>(),
        ));
    gh.factory<_i46.AcademicBloc>(() => _i46.AcademicBloc(
          gh<_i15.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i24.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i40.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i14.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i23.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i47.GetSyllabusTermsUseCase>(),
        ));
    return this;
  }
}
