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
    as _i22;

import '../core/api_provider.dart' as _i5;
import '../core/connection_checker.dart' as _i21;
import '../core/firebase_database.dart' as _i6;
import '../core/hive_service.dart' as _i7;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i20;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i26;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i9;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i24;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i8;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i27;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i15;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i12;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i23;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i25;
import '../mash/data/repositories/academic_repository_impl.dart' as _i14;
import '../mash/data/repositories/auth_repository_impl.dart' as _i45;
import '../mash/data/repositories/chat_repository_impl.dart' as _i11;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i43;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i19;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i41;
import '../mash/data/repositories/notice_repository_impl.dart' as _i47;
import '../mash/domain/repositories/academic_repository.dart' as _i13;
import '../mash/domain/repositories/auth_repository.dart' as _i44;
import '../mash/domain/repositories/chat_repository.dart' as _i10;
import '../mash/domain/repositories/dash_board_repository.dart' as _i42;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i18;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i40;
import '../mash/domain/repositories/notice_repository.dart' as _i46;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i16;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i31;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i17;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i29;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i28;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i55;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i57;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i56;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i54;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i34;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i32;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i36;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i37;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i38;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i33;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i35;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i39;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i49;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i30;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i51;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i50;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i52;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i48;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i61;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i4;
import '../mash/presentation/manager/chat_bloc/chat_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i53;
import '../mash/presentation/manager/drawer_bloc/drawer_bloc.dart' as _i58;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i60;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i59;

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
    gh.factory<_i3.ChatBloc>(() => _i3.ChatBloc());
    gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
    gh.singleton<_i5.ApiProvider>(() => _i5.ApiProvider());
    gh.singleton<_i6.FirebaseDatabaseMethods>(
        () => _i6.FirebaseDatabaseMethods());
    gh.lazySingleton<_i7.HiveService>(() => _i7.HiveService());
    gh.lazySingleton<_i8.ChatDataSource>(() => _i8.ChatDataSourceImpl(
          gh<_i6.FirebaseDatabaseMethods>(),
          gh<_i7.HiveService>(),
        ));
    gh.lazySingleton<_i9.AcademicRemoteDataSource>(
        () => _i9.AcademicRemoteDataSourceImpl(gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i10.ChatRepository>(
        () => _i11.ChatRepositoryImpl(gh<_i8.ChatDataSource>()));
    gh.lazySingleton<_i12.DrawerMenuItemsRemoteDataSource>(() =>
        _i12.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i13.AcademicRepository>(
        () => _i14.AcademicRepositoryImpl(gh<_i9.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i15.DashBoardRemoteDataSource>(() =>
        _i15.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.factory<_i16.GetAcademicSubjectUseCase>(() =>
        _i16.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i13.AcademicRepository>()));
    gh.factory<_i17.GetDivisionDetailsUseCase>(() =>
        _i17.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i13.AcademicRepository>()));
    gh.lazySingleton<_i18.DrawerMenuItemsRepository>(() =>
        _i19.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i12.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i20.AuthLocalDataSource>(
        () => _i20.AuthLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i21.ConnectionChecker>(
        () => _i21.ConnectionCheckerImpl(gh<_i22.InternetConnectionChecker>()));
    gh.lazySingleton<_i23.HomeWorkNotesRemoteDataSource>(() =>
        _i23.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i24.AuthRemoteDataSource>(
        () => _i24.AuthRemoteDataSourceImpl(
              gh<_i5.ApiProvider>(),
              gh<_i6.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i25.NoticeRemoteDataSource>(() =>
        _i25.NoticeRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i26.DashBoardLocalDataSource>(() =>
        _i26.DashBoardLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i27.DashBoardDataSource>(
        () => _i27.DashBoardDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i28.GetSyllabusUseCase>(() => _i28.GetSyllabusUseCase(
        academicRepository: gh<_i13.AcademicRepository>()));
    gh.lazySingleton<_i29.GetSyllabusTermsUseCase>(() =>
        _i29.GetSyllabusTermsUseCase(
            academicRepository: gh<_i13.AcademicRepository>()));
    gh.lazySingleton<_i30.GetNewsBoardUseCase>(() => _i30.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i18.DrawerMenuItemsRepository>()));
    gh.factory<_i31.GetClassInforUseCase>(
        () => _i31.GetClassInforUseCase(gh<_i13.AcademicRepository>()));
    gh.singleton<_i32.GetChatRoomsUseCase>(
        () => _i32.GetChatRoomsUseCase(gh<_i10.ChatRepository>()));
    gh.singleton<_i33.SendMessageUserCase>(
        () => _i33.SendMessageUserCase(gh<_i10.ChatRepository>()));
    gh.factory<_i34.AddChatRoomUseCase>(
        () => _i34.AddChatRoomUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i35.UpdateMessageUseCase>(
        () => _i35.UpdateMessageUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i36.GetChatUseCase>(
        () => _i36.GetChatUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i37.GetUserMembersUseCase>(
        () => _i37.GetUserMembersUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i38.GetUsersUseCase>(
        () => _i38.GetUsersUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i39.UpdateRoomUseCase>(
        () => _i39.UpdateRoomUseCase(gh<_i10.ChatRepository>()));
    gh.lazySingleton<_i40.HomeWorkNotesRepository>(() =>
        _i41.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i23.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i42.DashBoardRepository>(() => _i43.DashBoardRepoImpl(
          gh<_i15.DashBoardRemoteDataSource>(),
          gh<_i21.ConnectionChecker>(),
          gh<_i26.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i44.AuthRepository>(() => _i45.AuthRepositoryImpl(
          gh<_i21.ConnectionChecker>(),
          authRemoteDataSource: gh<_i24.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i20.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i46.NoticeRepository>(() => _i47.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i25.NoticeRemoteDataSource>()));
    gh.factory<_i48.GetAllNoticeUseCase>(() => _i48.GetAllNoticeUseCase(
        noticeRepository: gh<_i46.NoticeRepository>()));
    gh.factory<_i49.FetchWordThoughtUseCase>(
        () => _i49.FetchWordThoughtUseCase(gh<_i42.DashBoardRepository>()));
    gh.lazySingleton<_i50.NotesReportsUseCase>(() => _i50.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i40.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i51.HomeWorkReportsUseCase>(() =>
        _i51.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i40.HomeWorkNotesRepository>()));
    gh.factory<_i52.GetNoticeBoardPopUp>(
        () => _i52.GetNoticeBoardPopUp(gh<_i46.NoticeRepository>()));
    gh.factory<_i53.DashboardBloc>(
        () => _i53.DashboardBloc(gh<_i49.FetchWordThoughtUseCase>()));
    gh.singleton<_i54.SignOutUseCase>(
        () => _i54.SignOutUseCase(gh<_i44.AuthRepository>()));
    gh.lazySingleton<_i55.GetUserInfoUseCase>(
        () => _i55.GetUserInfoUseCase(gh<_i44.AuthRepository>()));
    gh.lazySingleton<_i56.SaveUserInfoUseCase>(
        () => _i56.SaveUserInfoUseCase(gh<_i44.AuthRepository>()));
    gh.lazySingleton<_i57.LoginUseCase>(
        () => _i57.LoginUseCase(gh<_i44.AuthRepository>()));
    gh.factory<_i58.DrawerBloc>(() => _i58.DrawerBloc(
          gh<_i30.GetNewsBoardUseCase>(),
          gh<_i55.GetUserInfoUseCase>(),
        ));
    gh.factory<_i59.NoticeBloc>(() => _i59.NoticeBloc(
          gh<_i52.GetNoticeBoardPopUp>(),
          gh<_i48.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i60.HomeWorkNotesBloc>(() => _i60.HomeWorkNotesBloc(
          gh<_i51.HomeWorkReportsUseCase>(),
          gh<_i55.GetUserInfoUseCase>(),
          gh<_i50.NotesReportsUseCase>(),
        ));
    gh.factory<_i61.AcademicBloc>(() => _i61.AcademicBloc(
          gh<_i17.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i31.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i55.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i16.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i28.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i29.GetSyllabusTermsUseCase>(),
        ));
    return this;
  }
}
