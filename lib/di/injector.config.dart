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
    as _i37;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i36;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i35;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i41;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i16;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i39;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i11;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i42;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i30;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i25;
    as _i23;
<<<<<<< HEAD
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
=======
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
>>>>>>> 1a22894c555853c94ecfd96d2f84906fba341f63
    as _i36;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i38;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i20;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i40;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i15;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i12;
import '../mash/data/repositories/academic_repository_impl.dart' as _i27;
import '../mash/data/repositories/auth_repository_impl.dart' as _i65;
import '../mash/data/repositories/chat_repository_impl.dart' as _i22;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i63;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i34;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i61;
import '../mash/data/repositories/id_transfer_type_repo_impl.dart' as _i59;
import '../mash/data/repositories/notice_repository_impl.dart' as _i67;
import '../mash/data/repositories/profile_repository_impl.dart' as _i24;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i18;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i14;
import '../mash/domain/repositories/academic_repository.dart' as _i26;
import '../mash/domain/repositories/auth_repository.dart' as _i64;
import '../mash/domain/repositories/chat_repository.dart' as _i21;
import '../mash/domain/repositories/dash_board_repository.dart' as _i62;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i33;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i60;
import '../mash/domain/repositories/id_request_repository.dart' as _i58;
import '../mash/domain/repositories/notice_repository.dart' as _i66;
import '../mash/domain/repositories/profile_repository.dart' as _i23;
import '../mash/domain/repositories/teacher_repository.dart' as _i17;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i13;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i31;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i49;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i32;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i44;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i45;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i76;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i77;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i78;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i75;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i52;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i50;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i53;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i54;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i55;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i51;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i56;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i57;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i70;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i71;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i46;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
<<<<<<< HEAD
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
=======
    as _i67;
    as _i72;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i73;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i69;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i74;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i68;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i28;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i29;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i47;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i48;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i43;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i81;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i83;
import '../mash/presentation/manager/drawer_bloc/drawer_bloc.dart' as _i82;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i80;
import '../mash/presentation/manager/id_request/id_request_bloc.dart' as _i7;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i79;
import '../mash/presentation/manager/profile/profile_bloc.dart' as _i5;
import '../mash/presentation/manager/teacher_bloc/teacher_bloc.dart' as _i6;
>>>>>>> 1a22894c555853c94ecfd96d2f84906fba341f63

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
    gh.factory<_i6.TeacherBloc>(() => _i6.TeacherBloc());
    gh.factory<_i7.IdRequestBloc>(() => _i7.IdRequestBloc());
    gh.singleton<_i8.ApiProvider>(() => _i8.ApiProvider());
    gh.singleton<_i9.FirebaseDatabaseMethods>(
        () => _i9.FirebaseDatabaseMethods());
    gh.lazySingleton<_i10.HiveService>(() => _i10.HiveService());
    gh.lazySingleton<_i11.ChatDataSource>(() => _i11.ChatDataSourceImpl(
          gh<_i9.FirebaseDatabaseMethods>(),
          gh<_i10.HiveService>(),
        ));
    gh.lazySingleton<_i12.VehicleTrackerDataSource>(
        () => _i12.VehicleTrackerImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i13.VehicleTrackerRepository>(
        () => _i14.VehicleTrackerRepoImpl(gh<_i12.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i15.TeacherDataSource>(
        () => _i15.TeacherDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i16.AcademicRemoteDataSource>(
        () => _i16.AcademicRemoteDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i17.TeacherRepository>(
        () => _i18.TeacherRepoImpl(gh<_i15.TeacherDataSource>()));
    gh.lazySingleton<_i19.ProfileDataSource>(
        () => _i19.ProfileDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i20.IdRequestTypeDataSource>(
        () => _i20.IdRequestTypeImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i21.ChatRepository>(
        () => _i22.ChatRepositoryImpl(gh<_i11.ChatDataSource>()));
    gh.lazySingleton<_i23.ProfileRepository>(
        () => _i24.ProfileRepositoryImpl(gh<_i19.ProfileDataSource>()));
    gh.lazySingleton<_i25.DrawerMenuItemsRemoteDataSource>(() =>
        _i25.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i26.AcademicRepository>(
        () => _i27.AcademicRepositoryImpl(gh<_i16.AcademicRemoteDataSource>()));
    gh.factory<_i28.GetSiblingsUseCase>(
        () => _i28.GetSiblingsUseCase(gh<_i23.ProfileRepository>()));
    gh.singleton<_i29.GetUserDetailsUseCase>(
        () => _i29.GetUserDetailsUseCase(gh<_i23.ProfileRepository>()));
    gh.lazySingleton<_i30.DashBoardRemoteDataSource>(() =>
        _i30.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i31.GetAcademicSubjectUseCase>(() =>
        _i31.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i26.AcademicRepository>()));
    gh.factory<_i32.GetDivisionDetailsUseCase>(() =>
        _i32.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i26.AcademicRepository>()));
    gh.lazySingleton<_i33.DrawerMenuItemsRepository>(() =>
        _i34.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i25.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i35.AuthLocalDataSource>(() =>
        _i35.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i36.ConnectionChecker>(
        () => _i36.ConnectionCheckerImpl(gh<_i37.InternetConnectionChecker>()));
    gh.lazySingleton<_i38.HomeWorkNotesRemoteDataSource>(() =>
        _i38.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i39.AuthRemoteDataSource>(
        () => _i39.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i40.NoticeRemoteDataSource>(() =>
        _i40.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i41.DashBoardLocalDataSource>(() =>
        _i41.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i42.DashBoardDataSource>(
        () => _i42.DashBoardDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i43.GetVehicleTrackerStopsUseCase>(() =>
        _i43.GetVehicleTrackerStopsUseCase(
            gh<_i13.VehicleTrackerRepository>()));
    gh.lazySingleton<_i44.GetSyllabusTermsUseCase>(() =>
        _i44.GetSyllabusTermsUseCase(
            academicRepository: gh<_i26.AcademicRepository>()));
    gh.lazySingleton<_i45.GetSyllabusUseCase>(() => _i45.GetSyllabusUseCase(
        academicRepository: gh<_i26.AcademicRepository>()));
    gh.lazySingleton<_i46.GetNewsBoardUseCase>(() => _i46.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i33.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i47.GetTeacherRatingUseCase>(
        () => _i47.GetTeacherRatingUseCase(gh<_i17.TeacherRepository>()));
    gh.lazySingleton<_i48.GetTeacherRatingQuestionsUseCase>(() =>
        _i48.GetTeacherRatingQuestionsUseCase(gh<_i17.TeacherRepository>()));
    gh.factory<_i49.GetClassInforUseCase>(
        () => _i49.GetClassInforUseCase(gh<_i26.AcademicRepository>()));
    gh.singleton<_i50.GetChatRoomsUseCase>(
        () => _i50.GetChatRoomsUseCase(gh<_i21.ChatRepository>()));
    gh.singleton<_i51.SendMessageUserCase>(
        () => _i51.SendMessageUserCase(gh<_i21.ChatRepository>()));
    gh.factory<_i52.AddChatRoomUseCase>(
        () => _i52.AddChatRoomUseCase(gh<_i21.ChatRepository>()));
    gh.factory<_i53.GetChatUseCase>(
        () => _i53.GetChatUseCase(gh<_i21.ChatRepository>()));
    gh.factory<_i54.GetUserMembersUseCase>(
        () => _i54.GetUserMembersUseCase(gh<_i21.ChatRepository>()));
    gh.factory<_i55.GetUsersUseCase>(
        () => _i55.GetUsersUseCase(gh<_i21.ChatRepository>()));
    gh.factory<_i56.UpdateMessageUseCase>(
        () => _i56.UpdateMessageUseCase(gh<_i21.ChatRepository>()));
    gh.factory<_i57.UpdateRoomUseCase>(
        () => _i57.UpdateRoomUseCase(gh<_i21.ChatRepository>()));
    gh.lazySingleton<_i58.IdRequestRepository>(
        () => _i59.IdRequestTypeRepoImpl(gh<_i20.IdRequestTypeDataSource>()));
    gh.lazySingleton<_i60.HomeWorkNotesRepository>(() =>
        _i61.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i38.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i62.DashBoardRepository>(() => _i63.DashBoardRepoImpl(
          gh<_i30.DashBoardRemoteDataSource>(),
          gh<_i36.ConnectionChecker>(),
          gh<_i41.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i64.AuthRepository>(() => _i65.AuthRepositoryImpl(
          gh<_i36.ConnectionChecker>(),
          authRemoteDataSource: gh<_i39.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i35.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i66.NoticeRepository>(() => _i67.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i40.NoticeRemoteDataSource>()));
    gh.factory<_i68.GetAllNoticeUseCase>(() => _i68.GetAllNoticeUseCase(
        noticeRepository: gh<_i66.NoticeRepository>()));
    gh.lazySingleton<_i69.GetIdRequestTypeUseCase>(
        () => _i69.GetIdRequestTypeUseCase(gh<_i58.IdRequestRepository>()));
    gh.factory<_i70.FetchWordThoughtUseCase>(
        () => _i70.FetchWordThoughtUseCase(gh<_i62.DashBoardRepository>()));
    gh.factory<_i71.GetRoleMenuUsecase>(
        () => _i71.GetRoleMenuUsecase(gh<_i62.DashBoardRepository>()));
    gh.lazySingleton<_i72.HomeWorkReportsUseCase>(() =>
        _i72.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i60.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i73.NotesReportsUseCase>(() => _i73.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i60.HomeWorkNotesRepository>()));
    gh.factory<_i74.GetNoticeBoardPopUp>(
        () => _i74.GetNoticeBoardPopUp(gh<_i66.NoticeRepository>()));
    gh.singleton<_i75.SignOutUseCase>(
        () => _i75.SignOutUseCase(gh<_i64.AuthRepository>()));
    gh.lazySingleton<_i76.GetUserInfoUseCase>(
        () => _i76.GetUserInfoUseCase(gh<_i64.AuthRepository>()));
    gh.lazySingleton<_i77.LoginUseCase>(
        () => _i77.LoginUseCase(gh<_i64.AuthRepository>()));
    gh.lazySingleton<_i78.SaveUserInfoUseCase>(
        () => _i78.SaveUserInfoUseCase(gh<_i64.AuthRepository>()));
    gh.factory<_i79.NoticeBloc>(() => _i79.NoticeBloc(
          gh<_i74.GetNoticeBoardPopUp>(),
          gh<_i68.GetAllNoticeUseCase>(),
<<<<<<< HEAD
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
=======
    gh.lazySingleton<_i62.NoticeRepository>(() => _i63.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i38.NoticeRemoteDataSource>()));
    gh.factory<_i64.GetAllNoticeUseCase>(() => _i64.GetAllNoticeUseCase(
        noticeRepository: gh<_i62.NoticeRepository>()));
    gh.factory<_i65.FetchWordThoughtUseCase>(
        () => _i65.FetchWordThoughtUseCase(gh<_i58.DashBoardRepository>()));
    gh.factory<_i66.GetRoleMenuUsecase>(
        () => _i66.GetRoleMenuUsecase(gh<_i58.DashBoardRepository>()));
    gh.lazySingleton<_i67.HomeWorkReportsUseCase>(() =>
        _i67.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i56.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i68.NotesReportsUseCase>(() => _i68.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i56.HomeWorkNotesRepository>()));
    gh.factory<_i69.GetNoticeBoardPopUp>(
        () => _i69.GetNoticeBoardPopUp(gh<_i62.NoticeRepository>()));
    gh.singleton<_i70.SignOutUseCase>(
        () => _i70.SignOutUseCase(gh<_i60.AuthRepository>()));
    gh.lazySingleton<_i71.GetUserInfoUseCase>(
        () => _i71.GetUserInfoUseCase(gh<_i60.AuthRepository>()));
    gh.lazySingleton<_i72.LoginUseCase>(
        () => _i72.LoginUseCase(gh<_i60.AuthRepository>()));
    gh.lazySingleton<_i73.SaveUserInfoUseCase>(
        () => _i73.SaveUserInfoUseCase(gh<_i60.AuthRepository>()));
    gh.factory<_i74.NoticeBloc>(() => _i74.NoticeBloc(
          gh<_i69.GetNoticeBoardPopUp>(),
          gh<_i64.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i80.HomeWorkNotesBloc>(() => _i80.HomeWorkNotesBloc(
          gh<_i72.HomeWorkReportsUseCase>(),
          gh<_i76.GetUserInfoUseCase>(),
          gh<_i73.NotesReportsUseCase>(),
        ));
    gh.factory<_i81.AcademicBloc>(() => _i81.AcademicBloc(
          gh<_i32.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i49.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i76.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i31.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i45.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i44.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i82.DrawerBloc>(() => _i82.DrawerBloc(
          gh<_i46.GetNewsBoardUseCase>(),
          gh<_i76.GetUserInfoUseCase>(),
          gh<_i71.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i83.DashboardBloc>(() => _i83.DashboardBloc(
          gh<_i70.FetchWordThoughtUseCase>(),
          gh<_i76.GetUserInfoUseCase>(),
    gh.factory<_i78.DashboardBloc>(() => _i78.DashboardBloc(
          gh<_i65.FetchWordThoughtUseCase>(),
          gh<_i71.GetUserInfoUseCase>(),
>>>>>>> 1a22894c555853c94ecfd96d2f84906fba341f63
        ));
    return this;
  }
}
