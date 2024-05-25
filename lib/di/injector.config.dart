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
    as _i28;

import '../core/api_provider.dart' as _i6;
import '../core/connection_checker.dart' as _i27;
import '../core/firebase_database.dart' as _i7;
import '../core/hive_service.dart' as _i8;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i26;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i32;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i10;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i30;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i9;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i33;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i16;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i29;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i31;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i11;
import '../mash/data/repositories/academic_repository_impl.dart' as _i18;
import '../mash/data/repositories/auth_repository_impl.dart' as _i51;
import '../mash/data/repositories/chat_repository_impl.dart' as _i13;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i49;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i25;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i47;
import '../mash/data/repositories/notice_repository_impl.dart' as _i53;
import '../mash/data/repositories/profile_repository_impl.dart' as _i15;
import '../mash/domain/repositories/academic_repository.dart' as _i17;
import '../mash/domain/repositories/auth_repository.dart' as _i50;
import '../mash/domain/repositories/chat_repository.dart' as _i12;
import '../mash/domain/repositories/dash_board_repository.dart' as _i48;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i24;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i46;
import '../mash/domain/repositories/notice_repository.dart' as _i52;
import '../mash/domain/repositories/profile_repository.dart' as _i14;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i22;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i37;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i23;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i34;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i35;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i62;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i63;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i64;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i61;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i40;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i38;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i41;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i42;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i43;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i39;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i44;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i45;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i55;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i56;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i36;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i57;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i59;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i58;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i60;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i54;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i19;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i20;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i67;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i69;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i68;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i66;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i65;
import '../mash/presentation/manager/bloc/profile/profile_bloc.dart' as _i5;

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
    gh.factory<_i5.ProfileBloc>(() => _i5.ProfileBloc());
    gh.singleton<_i6.ApiProvider>(() => _i6.ApiProvider());
    gh.singleton<_i7.FirebaseDatabaseMethods>(
        () => _i7.FirebaseDatabaseMethods());
    gh.lazySingleton<_i8.HiveService>(() => _i8.HiveService());
    gh.lazySingleton<_i9.ChatDataSource>(() => _i9.ChatDataSourceImpl(
          gh<_i7.FirebaseDatabaseMethods>(),
          gh<_i8.HiveService>(),
        ));
    gh.lazySingleton<_i10.AcademicRemoteDataSource>(
        () => _i10.AcademicRemoteDataSourceImpl(gh<_i6.ApiProvider>()));
    gh.lazySingleton<_i11.ProfileDataSource>(
        () => _i11.ProfileDataSourceImpl(gh<_i6.ApiProvider>()));
    gh.lazySingleton<_i12.ChatRepository>(
        () => _i13.ChatRepositoryImpl(gh<_i9.ChatDataSource>()));
    gh.lazySingleton<_i14.ProfileRepository>(
        () => _i15.ProfileRepositoryImpl(gh<_i11.ProfileDataSource>()));
    gh.lazySingleton<_i16.DrawerMenuItemsRemoteDataSource>(() =>
        _i16.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i6.ApiProvider>()));
    gh.lazySingleton<_i17.AcademicRepository>(
        () => _i18.AcademicRepositoryImpl(gh<_i10.AcademicRemoteDataSource>()));
    gh.factory<_i19.GetSiblingsUseCase>(
        () => _i19.GetSiblingsUseCase(gh<_i14.ProfileRepository>()));
    gh.singleton<_i20.GetUserDetailsUseCase>(
        () => _i20.GetUserDetailsUseCase(gh<_i14.ProfileRepository>()));
    gh.lazySingleton<_i21.DashBoardRemoteDataSource>(() =>
        _i21.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i6.ApiProvider>()));
    gh.factory<_i22.GetAcademicSubjectUseCase>(() =>
        _i22.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i17.AcademicRepository>()));
    gh.factory<_i23.GetDivisionDetailsUseCase>(() =>
        _i23.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i17.AcademicRepository>()));
    gh.lazySingleton<_i24.DrawerMenuItemsRepository>(() =>
        _i25.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i16.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i26.AuthLocalDataSource>(
        () => _i26.AuthLocalDataSourceImpl(hiveService: gh<_i8.HiveService>()));
    gh.lazySingleton<_i27.ConnectionChecker>(
        () => _i27.ConnectionCheckerImpl(gh<_i28.InternetConnectionChecker>()));
    gh.lazySingleton<_i29.HomeWorkNotesRemoteDataSource>(() =>
        _i29.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i6.ApiProvider>()));
    gh.lazySingleton<_i30.AuthRemoteDataSource>(
        () => _i30.AuthRemoteDataSourceImpl(
              gh<_i6.ApiProvider>(),
              gh<_i7.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i31.NoticeRemoteDataSource>(() =>
        _i31.NoticeRemoteDataSourceImpl(apiProvider: gh<_i6.ApiProvider>()));
    gh.lazySingleton<_i32.DashBoardLocalDataSource>(() =>
        _i32.DashBoardLocalDataSourceImpl(hiveService: gh<_i8.HiveService>()));
    gh.lazySingleton<_i33.DashBoardDataSource>(
        () => _i33.DashBoardDataSourceImpl(apiProvider: gh<_i6.ApiProvider>()));
    gh.lazySingleton<_i34.GetSyllabusTermsUseCase>(() =>
        _i34.GetSyllabusTermsUseCase(
            academicRepository: gh<_i17.AcademicRepository>()));
    gh.lazySingleton<_i35.GetSyllabusUseCase>(() => _i35.GetSyllabusUseCase(
        academicRepository: gh<_i17.AcademicRepository>()));
    gh.lazySingleton<_i36.GetNewsBoardUseCase>(() => _i36.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i24.DrawerMenuItemsRepository>()));
    gh.factory<_i37.GetClassInforUseCase>(
        () => _i37.GetClassInforUseCase(gh<_i17.AcademicRepository>()));
    gh.singleton<_i38.GetChatRoomsUseCase>(
        () => _i38.GetChatRoomsUseCase(gh<_i12.ChatRepository>()));
    gh.singleton<_i39.SendMessageUserCase>(
        () => _i39.SendMessageUserCase(gh<_i12.ChatRepository>()));
    gh.factory<_i40.AddChatRoomUseCase>(
        () => _i40.AddChatRoomUseCase(gh<_i12.ChatRepository>()));
    gh.factory<_i41.GetChatUseCase>(
        () => _i41.GetChatUseCase(gh<_i12.ChatRepository>()));
    gh.factory<_i42.GetUserMembersUseCase>(
        () => _i42.GetUserMembersUseCase(gh<_i12.ChatRepository>()));
    gh.factory<_i43.GetUsersUseCase>(
        () => _i43.GetUsersUseCase(gh<_i12.ChatRepository>()));
    gh.factory<_i44.UpdateMessageUseCase>(
        () => _i44.UpdateMessageUseCase(gh<_i12.ChatRepository>()));
    gh.factory<_i45.UpdateRoomUseCase>(
        () => _i45.UpdateRoomUseCase(gh<_i12.ChatRepository>()));
    gh.lazySingleton<_i46.HomeWorkNotesRepository>(() =>
        _i47.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i29.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i48.DashBoardRepository>(() => _i49.DashBoardRepoImpl(
          gh<_i21.DashBoardRemoteDataSource>(),
          gh<_i27.ConnectionChecker>(),
          gh<_i32.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i50.AuthRepository>(() => _i51.AuthRepositoryImpl(
          gh<_i27.ConnectionChecker>(),
          authRemoteDataSource: gh<_i30.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i26.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i52.NoticeRepository>(() => _i53.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i31.NoticeRemoteDataSource>()));
    gh.factory<_i54.GetAllNoticeUseCase>(() => _i54.GetAllNoticeUseCase(
        noticeRepository: gh<_i52.NoticeRepository>()));
    gh.factory<_i55.FetchWordThoughtUseCase>(
        () => _i55.FetchWordThoughtUseCase(gh<_i48.DashBoardRepository>()));
    gh.factory<_i56.GetRoleMenuUsecase>(
        () => _i56.GetRoleMenuUsecase(gh<_i48.DashBoardRepository>()));
    gh.lazySingleton<_i57.HomeWorkReportsUseCase>(() =>
        _i57.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i46.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i58.NotesReportsUseCase>(() => _i58.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i46.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i59.GetNoteReportDetails>(() => _i59.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i46.HomeWorkNotesRepository>()));
    gh.factory<_i60.GetNoticeBoardPopUp>(
        () => _i60.GetNoticeBoardPopUp(gh<_i52.NoticeRepository>()));
    gh.singleton<_i61.SignOutUseCase>(
        () => _i61.SignOutUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i62.GetUserInfoUseCase>(
        () => _i62.GetUserInfoUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i63.LoginUseCase>(
        () => _i63.LoginUseCase(gh<_i50.AuthRepository>()));
    gh.lazySingleton<_i64.SaveUserInfoUseCase>(
        () => _i64.SaveUserInfoUseCase(gh<_i50.AuthRepository>()));
    gh.factory<_i65.NoticeBloc>(() => _i65.NoticeBloc(
          gh<_i60.GetNoticeBoardPopUp>(),
          gh<_i54.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i66.HomeWorkNotesBloc>(() => _i66.HomeWorkNotesBloc(
          gh<_i57.HomeWorkReportsUseCase>(),
          gh<_i62.GetUserInfoUseCase>(),
          gh<_i58.NotesReportsUseCase>(),
          gh<_i59.GetNoteReportDetails>(),
        ));
    gh.factory<_i67.AcademicBloc>(() => _i67.AcademicBloc(
          gh<_i23.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i37.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i62.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i22.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i35.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i34.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i68.DrawerBloc>(() => _i68.DrawerBloc(
          gh<_i36.GetNewsBoardUseCase>(),
          gh<_i62.GetUserInfoUseCase>(),
          gh<_i56.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i69.DashboardBloc>(() => _i69.DashboardBloc(
          gh<_i55.FetchWordThoughtUseCase>(),
          gh<_i62.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
