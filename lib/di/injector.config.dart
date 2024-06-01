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
    as _i43;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i42;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i41;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i47;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i45;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i12;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i36;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i30;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i44;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i23;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i46;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i17;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i16;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i13;
import '../mash/data/repositories/academic_repository_impl.dart' as _i32;
import '../mash/data/repositories/auth_repository_impl.dart' as _i75;
import '../mash/data/repositories/chat_repository_impl.dart' as _i27;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i73;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i40;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i71;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i58;
import '../mash/data/repositories/notice_repository_impl.dart' as _i77;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i25;
import '../mash/data/repositories/profile_repository_impl.dart' as _i29;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i21;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i15;
import '../mash/domain/repositories/academic_repository.dart' as _i31;
import '../mash/domain/repositories/auth_repository.dart' as _i74;
import '../mash/domain/repositories/chat_repository.dart' as _i26;
import '../mash/domain/repositories/dash_board_repository.dart' as _i72;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i39;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i70;
import '../mash/domain/repositories/id_request_repository.dart' as _i57;
import '../mash/domain/repositories/notice_repository.dart' as _i76;
import '../mash/domain/repositories/profile_repository.dart' as _i28;
import '../mash/domain/repositories/teacher_repository.dart' as _i20;
import '../mash/domain/repositories/time_table_repository.dart' as _i24;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i14;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i37;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i56;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i38;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i50;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i51;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i90;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i91;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i92;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i89;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i61;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i59;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i62;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i63;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i64;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i60;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i65;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i66;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i82;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i78;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i83;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i52;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i85;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i84;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i87;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i86;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i80;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i81;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i88;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i79;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i33;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i34;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i35;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i53;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i54;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i55;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i67;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i68;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i69;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i48;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i49;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i94;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i97;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i95;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i96;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i93;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart'
    as _i11;

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
    gh.factory<_i5.IdRequestBloc>(() => _i5.IdRequestBloc());
    gh.factory<_i6.ProfileBloc>(() => _i6.ProfileBloc());
    gh.factory<_i7.TeacherBloc>(() => _i7.TeacherBloc());
    gh.singleton<_i8.ApiProvider>(() => _i8.ApiProvider());
    gh.singleton<_i9.FirebaseDatabaseMethods>(
        () => _i9.FirebaseDatabaseMethods());
    gh.lazySingleton<_i10.HiveService>(() => _i10.HiveService());
    gh.lazySingleton<_i11.VehicleTrackerStopsBloc>(
        () => _i11.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i12.ChatDataSource>(() => _i12.ChatDataSourceImpl(
          gh<_i9.FirebaseDatabaseMethods>(),
          gh<_i10.HiveService>(),
        ));
    gh.lazySingleton<_i13.VehicleTrackerDataSource>(
        () => _i13.VehicleTrackerImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i14.VehicleTrackerRepository>(
        () => _i15.VehicleTrackerRepoImpl(gh<_i13.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i16.TimeTableDataSource>(
        () => _i16.TimeTableDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i17.TeacherDataSource>(
        () => _i17.TeacherDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i18.AcademicRemoteDataSource>(
        () => _i18.AcademicRemoteDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i19.OfflineExamDataSource>(
        () => _i19.OfflineExamTermImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i20.TeacherRepository>(
        () => _i21.TeacherRepoImpl(gh<_i17.TeacherDataSource>()));
    gh.lazySingleton<_i22.ProfileDataSource>(
        () => _i22.ProfileDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i23.IdRequestTypeDataSource>(
        () => _i23.IdRequestTypeImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i24.TimeTableRepository>(() => _i25.TimeTableRepoImpl(
          gh<_i19.OfflineExamDataSource>(),
          gh<_i16.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i26.ChatRepository>(
        () => _i27.ChatRepositoryImpl(gh<_i12.ChatDataSource>()));
    gh.lazySingleton<_i28.ProfileRepository>(
        () => _i29.ProfileRepositoryImpl(gh<_i22.ProfileDataSource>()));
    gh.lazySingleton<_i30.DrawerMenuItemsRemoteDataSource>(() =>
        _i30.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i31.AcademicRepository>(
        () => _i32.AcademicRepositoryImpl(gh<_i18.AcademicRemoteDataSource>()));
    gh.factory<_i33.GetSiblingsUseCase>(
        () => _i33.GetSiblingsUseCase(gh<_i28.ProfileRepository>()));
    gh.singleton<_i34.GetUserDetailsUseCase>(
        () => _i34.GetUserDetailsUseCase(gh<_i28.ProfileRepository>()));
    gh.singleton<_i35.UpdateProfileUseCase>(
        () => _i35.UpdateProfileUseCase(gh<_i28.ProfileRepository>()));
    gh.lazySingleton<_i36.DashBoardRemoteDataSource>(() =>
        _i36.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i37.GetAcademicSubjectUseCase>(() =>
        _i37.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i31.AcademicRepository>()));
    gh.factory<_i38.GetDivisionDetailsUseCase>(() =>
        _i38.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i39.DrawerMenuItemsRepository>(() =>
        _i40.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i30.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i41.AuthLocalDataSource>(() =>
        _i41.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i42.ConnectionChecker>(
        () => _i42.ConnectionCheckerImpl(gh<_i43.InternetConnectionChecker>()));
    gh.lazySingleton<_i44.HomeWorkNotesRemoteDataSource>(() =>
        _i44.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i45.AuthRemoteDataSource>(
        () => _i45.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i46.NoticeRemoteDataSource>(() =>
        _i46.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i47.DashBoardLocalDataSource>(() =>
        _i47.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i48.GetVehicleCurrentLocation>(() =>
        _i48.GetVehicleCurrentLocation(gh<_i14.VehicleTrackerRepository>()));
    gh.lazySingleton<_i49.GetVehicleTrackerStopsUseCase>(() =>
        _i49.GetVehicleTrackerStopsUseCase(
            gh<_i14.VehicleTrackerRepository>()));
    gh.lazySingleton<_i50.GetSyllabusTermsUseCase>(() =>
        _i50.GetSyllabusTermsUseCase(
            academicRepository: gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i51.GetSyllabusUseCase>(() => _i51.GetSyllabusUseCase(
        academicRepository: gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i52.GetNewsBoardUseCase>(() => _i52.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i39.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i53.GetTeacherRatingUseCase>(
        () => _i53.GetTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i54.PostTeacherRatingUseCase>(
        () => _i54.PostTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i55.GetTeacherRatingQuestionsUseCase>(() =>
        _i55.GetTeacherRatingQuestionsUseCase(gh<_i20.TeacherRepository>()));
    gh.factory<_i56.GetClassInforUseCase>(
        () => _i56.GetClassInforUseCase(gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i57.IdRequestRepository>(
        () => _i58.IdRequestRepoImpl(gh<_i23.IdRequestTypeDataSource>()));
    gh.singleton<_i59.GetChatRoomsUseCase>(
        () => _i59.GetChatRoomsUseCase(gh<_i26.ChatRepository>()));
    gh.singleton<_i60.SendMessageUserCase>(
        () => _i60.SendMessageUserCase(gh<_i26.ChatRepository>()));
    gh.factory<_i61.AddChatRoomUseCase>(
        () => _i61.AddChatRoomUseCase(gh<_i26.ChatRepository>()));
    gh.factory<_i62.GetChatUseCase>(
        () => _i62.GetChatUseCase(gh<_i26.ChatRepository>()));
    gh.factory<_i63.GetUserMembersUseCase>(
        () => _i63.GetUserMembersUseCase(gh<_i26.ChatRepository>()));
    gh.factory<_i64.GetUsersUseCase>(
        () => _i64.GetUsersUseCase(gh<_i26.ChatRepository>()));
    gh.factory<_i65.UpdateMessageUseCase>(
        () => _i65.UpdateMessageUseCase(gh<_i26.ChatRepository>()));
    gh.factory<_i66.UpdateRoomUseCase>(
        () => _i66.UpdateRoomUseCase(gh<_i26.ChatRepository>()));
    gh.lazySingleton<_i67.GetDailyTimeTableUseCase>(
        () => _i67.GetDailyTimeTableUseCase(gh<_i24.TimeTableRepository>()));
    gh.lazySingleton<_i68.GetOfflineExamTermsUseCase>(
        () => _i68.GetOfflineExamTermsUseCase(gh<_i24.TimeTableRepository>()));
    gh.lazySingleton<_i69.GetOfflineExamTimeTableUseCase>(() =>
        _i69.GetOfflineExamTimeTableUseCase(gh<_i24.TimeTableRepository>()));
    gh.lazySingleton<_i70.HomeWorkNotesRepository>(() =>
        _i71.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i44.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i72.DashBoardRepository>(() => _i73.DashBoardRepoImpl(
          gh<_i36.DashBoardRemoteDataSource>(),
          gh<_i42.ConnectionChecker>(),
          gh<_i47.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i74.AuthRepository>(() => _i75.AuthRepositoryImpl(
          gh<_i42.ConnectionChecker>(),
          authRemoteDataSource: gh<_i45.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i41.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i76.NoticeRepository>(() => _i77.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i46.NoticeRemoteDataSource>()));
    gh.singleton<_i78.DigitalLibraryUseCase>(
        () => _i78.DigitalLibraryUseCase(gh<_i72.DashBoardRepository>()));
    gh.factory<_i79.GetAllNoticeUseCase>(() => _i79.GetAllNoticeUseCase(
        noticeRepository: gh<_i76.NoticeRepository>()));
    gh.lazySingleton<_i80.GetIdRequestTypeUseCase>(
        () => _i80.GetIdRequestTypeUseCase(gh<_i57.IdRequestRepository>()));
    gh.lazySingleton<_i81.PostIdRequestUseCase>(
        () => _i81.PostIdRequestUseCase(gh<_i57.IdRequestRepository>()));
    gh.factory<_i82.FetchWordThoughtUseCase>(
        () => _i82.FetchWordThoughtUseCase(gh<_i72.DashBoardRepository>()));
    gh.factory<_i83.GetRoleMenuUsecase>(
        () => _i83.GetRoleMenuUsecase(gh<_i72.DashBoardRepository>()));
    gh.lazySingleton<_i84.HomeWorkReportsUseCase>(() =>
        _i84.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i70.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i85.GetHomeWorkDetails>(() => _i85.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i70.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i86.NotesReportsUseCase>(() => _i86.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i70.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i87.GetNoteReportDetails>(() => _i87.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i70.HomeWorkNotesRepository>()));
    gh.factory<_i88.GetNoticeBoardPopUp>(
        () => _i88.GetNoticeBoardPopUp(gh<_i76.NoticeRepository>()));
    gh.singleton<_i89.SignOutUseCase>(
        () => _i89.SignOutUseCase(gh<_i74.AuthRepository>()));
    gh.lazySingleton<_i90.GetUserInfoUseCase>(
        () => _i90.GetUserInfoUseCase(gh<_i74.AuthRepository>()));
    gh.lazySingleton<_i91.LoginUseCase>(
        () => _i91.LoginUseCase(gh<_i74.AuthRepository>()));
    gh.lazySingleton<_i92.SaveUserInfoUseCase>(
        () => _i92.SaveUserInfoUseCase(gh<_i74.AuthRepository>()));
    gh.factory<_i93.NoticeBloc>(() => _i93.NoticeBloc(
          gh<_i88.GetNoticeBoardPopUp>(),
          gh<_i79.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i94.AcademicBloc>(() => _i94.AcademicBloc(
          gh<_i38.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i56.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i90.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i37.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i51.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i50.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i95.DrawerBloc>(() => _i95.DrawerBloc(
          gh<_i52.GetNewsBoardUseCase>(),
          gh<_i90.GetUserInfoUseCase>(),
          gh<_i83.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i96.HomeWorkNotesBloc>(() => _i96.HomeWorkNotesBloc(
          gh<_i84.HomeWorkReportsUseCase>(),
          gh<_i90.GetUserInfoUseCase>(),
          gh<_i86.NotesReportsUseCase>(),
          gh<_i87.GetNoteReportDetails>(),
          gh<_i85.GetHomeWorkDetails>(),
        ));
    gh.factory<_i97.DashboardBloc>(() => _i97.DashboardBloc(
          gh<_i82.FetchWordThoughtUseCase>(),
          gh<_i90.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
