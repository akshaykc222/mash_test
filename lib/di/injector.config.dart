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
    as _i25;

import '../core/api_provider.dart' as _i5;
import '../core/connection_checker.dart' as _i24;
import '../core/firebase_database.dart' as _i6;
import '../core/hive_service.dart' as _i7;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i23;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i29;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i10;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i27;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i8;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i30;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i15;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i26;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i28;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i9;
import '../mash/data/repositories/academic_repository_impl.dart' as _i17;
import '../mash/data/repositories/auth_repository_impl.dart' as _i49;
import '../mash/data/repositories/chat_repository_impl.dart' as _i14;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i47;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i22;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i45;
import '../mash/data/repositories/notice_repository_impl.dart' as _i51;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i12;
import '../mash/domain/repositories/academic_repository.dart' as _i16;
import '../mash/domain/repositories/auth_repository.dart' as _i48;
import '../mash/domain/repositories/chat_repository.dart' as _i13;
import '../mash/domain/repositories/dash_board_repository.dart' as _i46;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i21;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i44;
import '../mash/domain/repositories/notice_repository.dart' as _i50;
import '../mash/domain/repositories/teacher_repository.dart' as _i11;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i19;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i35;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i20;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i31;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i32;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i59;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i60;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i61;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i58;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i38;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i36;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i39;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i40;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i41;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i37;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i42;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i43;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i53;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i54;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i33;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i55;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i56;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i57;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i52;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i34;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i64;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i66;
import '../mash/presentation/manager/drawer_bloc/drawer_bloc.dart' as _i65;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i63;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i62;

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
    gh.factory<_i4.ChatBloc>(() => _i4.ChatBloc());
    gh.singleton<_i5.ApiProvider>(() => _i5.ApiProvider());
    gh.singleton<_i6.FirebaseDatabaseMethods>(
        () => _i6.FirebaseDatabaseMethods());
    gh.lazySingleton<_i7.HiveService>(() => _i7.HiveService());
    gh.lazySingleton<_i8.ChatDataSource>(() => _i8.ChatDataSourceImpl(
          gh<_i6.FirebaseDatabaseMethods>(),
          gh<_i7.HiveService>(),
        ));
    gh.lazySingleton<_i9.TeacherDataSource>(
        () => _i9.TeacherDataSourceImpl(gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i10.AcademicRemoteDataSource>(
        () => _i10.AcademicRemoteDataSourceImpl(gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i11.TeacherRepository>(
        () => _i12.TeacherRepoImpl(gh<_i9.TeacherDataSource>()));
    gh.lazySingleton<_i13.ChatRepository>(
        () => _i14.ChatRepositoryImpl(gh<_i8.ChatDataSource>()));
    gh.lazySingleton<_i15.DrawerMenuItemsRemoteDataSource>(() =>
        _i15.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i16.AcademicRepository>(
        () => _i17.AcademicRepositoryImpl(gh<_i10.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i18.DashBoardRemoteDataSource>(() =>
        _i18.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.factory<_i19.GetAcademicSubjectUseCase>(() =>
        _i19.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i16.AcademicRepository>()));
    gh.factory<_i20.GetDivisionDetailsUseCase>(() =>
        _i20.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i16.AcademicRepository>()));
    gh.lazySingleton<_i21.DrawerMenuItemsRepository>(() =>
        _i22.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i15.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i23.AuthLocalDataSource>(
        () => _i23.AuthLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i24.ConnectionChecker>(
        () => _i24.ConnectionCheckerImpl(gh<_i25.InternetConnectionChecker>()));
    gh.lazySingleton<_i26.HomeWorkNotesRemoteDataSource>(() =>
        _i26.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i27.AuthRemoteDataSource>(
        () => _i27.AuthRemoteDataSourceImpl(
              gh<_i5.ApiProvider>(),
              gh<_i6.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i28.NoticeRemoteDataSource>(() =>
        _i28.NoticeRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i29.DashBoardLocalDataSource>(() =>
        _i29.DashBoardLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i30.DashBoardDataSource>(
        () => _i30.DashBoardDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i31.GetSyllabusTermsUseCase>(() =>
        _i31.GetSyllabusTermsUseCase(
            academicRepository: gh<_i16.AcademicRepository>()));
    gh.lazySingleton<_i32.GetSyllabusUseCase>(() => _i32.GetSyllabusUseCase(
        academicRepository: gh<_i16.AcademicRepository>()));
    gh.lazySingleton<_i33.GetNewsBoardUseCase>(() => _i33.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i21.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i34.GetTeacherRatingUseCase>(
        () => _i34.GetTeacherRatingUseCase(gh<_i11.TeacherRepository>()));
    gh.factory<_i35.GetClassInforUseCase>(
        () => _i35.GetClassInforUseCase(gh<_i16.AcademicRepository>()));
    gh.singleton<_i36.GetChatRoomsUseCase>(
        () => _i36.GetChatRoomsUseCase(gh<_i13.ChatRepository>()));
    gh.singleton<_i37.SendMessageUserCase>(
        () => _i37.SendMessageUserCase(gh<_i13.ChatRepository>()));
    gh.factory<_i38.AddChatRoomUseCase>(
        () => _i38.AddChatRoomUseCase(gh<_i13.ChatRepository>()));
    gh.factory<_i39.GetChatUseCase>(
        () => _i39.GetChatUseCase(gh<_i13.ChatRepository>()));
    gh.factory<_i40.GetUserMembersUseCase>(
        () => _i40.GetUserMembersUseCase(gh<_i13.ChatRepository>()));
    gh.factory<_i41.GetUsersUseCase>(
        () => _i41.GetUsersUseCase(gh<_i13.ChatRepository>()));
    gh.factory<_i42.UpdateMessageUseCase>(
        () => _i42.UpdateMessageUseCase(gh<_i13.ChatRepository>()));
    gh.factory<_i43.UpdateRoomUseCase>(
        () => _i43.UpdateRoomUseCase(gh<_i13.ChatRepository>()));
    gh.lazySingleton<_i44.HomeWorkNotesRepository>(() =>
        _i45.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i26.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i46.DashBoardRepository>(() => _i47.DashBoardRepoImpl(
          gh<_i18.DashBoardRemoteDataSource>(),
          gh<_i24.ConnectionChecker>(),
          gh<_i29.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i48.AuthRepository>(() => _i49.AuthRepositoryImpl(
          gh<_i24.ConnectionChecker>(),
          authRemoteDataSource: gh<_i27.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i23.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i50.NoticeRepository>(() => _i51.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i28.NoticeRemoteDataSource>()));
    gh.factory<_i52.GetAllNoticeUseCase>(() => _i52.GetAllNoticeUseCase(
        noticeRepository: gh<_i50.NoticeRepository>()));
    gh.factory<_i53.FetchWordThoughtUseCase>(
        () => _i53.FetchWordThoughtUseCase(gh<_i46.DashBoardRepository>()));
    gh.factory<_i54.GetRoleMenuUsecase>(
        () => _i54.GetRoleMenuUsecase(gh<_i46.DashBoardRepository>()));
    gh.lazySingleton<_i55.HomeWorkReportsUseCase>(() =>
        _i55.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i44.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i56.NotesReportsUseCase>(() => _i56.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i44.HomeWorkNotesRepository>()));
    gh.factory<_i57.GetNoticeBoardPopUp>(
        () => _i57.GetNoticeBoardPopUp(gh<_i50.NoticeRepository>()));
    gh.singleton<_i58.SignOutUseCase>(
        () => _i58.SignOutUseCase(gh<_i48.AuthRepository>()));
    gh.lazySingleton<_i59.GetUserInfoUseCase>(
        () => _i59.GetUserInfoUseCase(gh<_i48.AuthRepository>()));
    gh.lazySingleton<_i60.LoginUseCase>(
        () => _i60.LoginUseCase(gh<_i48.AuthRepository>()));
    gh.lazySingleton<_i61.SaveUserInfoUseCase>(
        () => _i61.SaveUserInfoUseCase(gh<_i48.AuthRepository>()));
    gh.factory<_i62.NoticeBloc>(() => _i62.NoticeBloc(
          gh<_i57.GetNoticeBoardPopUp>(),
          gh<_i52.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i63.HomeWorkNotesBloc>(() => _i63.HomeWorkNotesBloc(
          gh<_i55.HomeWorkReportsUseCase>(),
          gh<_i59.GetUserInfoUseCase>(),
          gh<_i56.NotesReportsUseCase>(),
        ));
    gh.factory<_i64.AcademicBloc>(() => _i64.AcademicBloc(
          gh<_i20.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i35.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i59.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i19.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i32.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i31.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i65.DrawerBloc>(() => _i65.DrawerBloc(
          gh<_i33.GetNewsBoardUseCase>(),
          gh<_i59.GetUserInfoUseCase>(),
          gh<_i54.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i66.DashboardBloc>(() => _i66.DashboardBloc(
          gh<_i53.FetchWordThoughtUseCase>(),
          gh<_i59.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
