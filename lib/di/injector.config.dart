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
    as _i44;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i43;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i42;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i48;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i19;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i46;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i13;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i37;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i31;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i45;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i24;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i47;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i23;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i18;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i17;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i14;
import '../mash/data/repositories/academic_repository_impl.dart' as _i33;
import '../mash/data/repositories/auth_repository_impl.dart' as _i76;
import '../mash/data/repositories/chat_repository_impl.dart' as _i28;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i74;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i41;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i72;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i59;
import '../mash/data/repositories/notice_repository_impl.dart' as _i78;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i26;
import '../mash/data/repositories/profile_repository_impl.dart' as _i30;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i22;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i16;
import '../mash/domain/repositories/academic_repository.dart' as _i32;
import '../mash/domain/repositories/auth_repository.dart' as _i75;
import '../mash/domain/repositories/chat_repository.dart' as _i27;
import '../mash/domain/repositories/dash_board_repository.dart' as _i73;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i40;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i71;
import '../mash/domain/repositories/id_request_repository.dart' as _i58;
import '../mash/domain/repositories/notice_repository.dart' as _i77;
import '../mash/domain/repositories/profile_repository.dart' as _i29;
import '../mash/domain/repositories/teacher_repository.dart' as _i21;
import '../mash/domain/repositories/time_table_repository.dart' as _i25;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i15;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i38;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i57;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i39;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i51;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i52;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i91;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i92;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i93;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i90;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i62;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i60;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i63;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i64;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i65;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i61;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i66;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i67;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i83;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i79;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i84;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i53;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i86;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i85;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i88;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i87;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i81;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i82;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i89;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i80;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i34;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i35;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i36;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i54;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i55;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i56;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i68;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i69;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i70;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i49;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i50;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i95;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i98;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i96;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i97;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i94;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart'
    as _i12;
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
    gh.lazySingleton<_i12.TimeTableBloc>(() => _i12.TimeTableBloc());
    gh.lazySingleton<_i13.ChatDataSource>(() => _i13.ChatDataSourceImpl(
          gh<_i9.FirebaseDatabaseMethods>(),
          gh<_i10.HiveService>(),
        ));
    gh.lazySingleton<_i14.VehicleTrackerDataSource>(
        () => _i14.VehicleTrackerImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i15.VehicleTrackerRepository>(
        () => _i16.VehicleTrackerRepoImpl(gh<_i14.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i17.TimeTableDataSource>(
        () => _i17.TimeTableDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i18.TeacherDataSource>(
        () => _i18.TeacherDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i19.AcademicRemoteDataSource>(
        () => _i19.AcademicRemoteDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i20.OfflineExamDataSource>(
        () => _i20.OfflineExamTermImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i21.TeacherRepository>(
        () => _i22.TeacherRepoImpl(gh<_i18.TeacherDataSource>()));
    gh.lazySingleton<_i23.ProfileDataSource>(
        () => _i23.ProfileDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i24.IdRequestTypeDataSource>(
        () => _i24.IdRequestTypeImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i25.TimeTableRepository>(() => _i26.TimeTableRepoImpl(
          gh<_i20.OfflineExamDataSource>(),
          gh<_i17.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i27.ChatRepository>(
        () => _i28.ChatRepositoryImpl(gh<_i13.ChatDataSource>()));
    gh.lazySingleton<_i29.ProfileRepository>(
        () => _i30.ProfileRepositoryImpl(gh<_i23.ProfileDataSource>()));
    gh.lazySingleton<_i31.DrawerMenuItemsRemoteDataSource>(() =>
        _i31.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i32.AcademicRepository>(
        () => _i33.AcademicRepositoryImpl(gh<_i19.AcademicRemoteDataSource>()));
    gh.factory<_i34.GetSiblingsUseCase>(
        () => _i34.GetSiblingsUseCase(gh<_i29.ProfileRepository>()));
    gh.singleton<_i35.GetUserDetailsUseCase>(
        () => _i35.GetUserDetailsUseCase(gh<_i29.ProfileRepository>()));
    gh.singleton<_i36.UpdateProfileUseCase>(
        () => _i36.UpdateProfileUseCase(gh<_i29.ProfileRepository>()));
    gh.lazySingleton<_i37.DashBoardRemoteDataSource>(() =>
        _i37.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i38.GetAcademicSubjectUseCase>(() =>
        _i38.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i32.AcademicRepository>()));
    gh.factory<_i39.GetDivisionDetailsUseCase>(() =>
        _i39.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i32.AcademicRepository>()));
    gh.lazySingleton<_i40.DrawerMenuItemsRepository>(() =>
        _i41.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i31.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i42.AuthLocalDataSource>(() =>
        _i42.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i43.ConnectionChecker>(
        () => _i43.ConnectionCheckerImpl(gh<_i44.InternetConnectionChecker>()));
    gh.lazySingleton<_i45.HomeWorkNotesRemoteDataSource>(() =>
        _i45.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i46.AuthRemoteDataSource>(
        () => _i46.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i47.NoticeRemoteDataSource>(() =>
        _i47.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i48.DashBoardLocalDataSource>(() =>
        _i48.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i49.GetVehicleCurrentLocation>(() =>
        _i49.GetVehicleCurrentLocation(gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i50.GetVehicleTrackerStopsUseCase>(() =>
        _i50.GetVehicleTrackerStopsUseCase(
            gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i51.GetSyllabusTermsUseCase>(() =>
        _i51.GetSyllabusTermsUseCase(
            academicRepository: gh<_i32.AcademicRepository>()));
    gh.lazySingleton<_i52.GetSyllabusUseCase>(() => _i52.GetSyllabusUseCase(
        academicRepository: gh<_i32.AcademicRepository>()));
    gh.lazySingleton<_i53.GetNewsBoardUseCase>(() => _i53.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i40.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i54.GetTeacherRatingUseCase>(
        () => _i54.GetTeacherRatingUseCase(gh<_i21.TeacherRepository>()));
    gh.lazySingleton<_i55.PostTeacherRatingUseCase>(
        () => _i55.PostTeacherRatingUseCase(gh<_i21.TeacherRepository>()));
    gh.lazySingleton<_i56.GetTeacherRatingQuestionsUseCase>(() =>
        _i56.GetTeacherRatingQuestionsUseCase(gh<_i21.TeacherRepository>()));
    gh.factory<_i57.GetClassInforUseCase>(
        () => _i57.GetClassInforUseCase(gh<_i32.AcademicRepository>()));
    gh.lazySingleton<_i58.IdRequestRepository>(
        () => _i59.IdRequestRepoImpl(gh<_i24.IdRequestTypeDataSource>()));
    gh.singleton<_i60.GetChatRoomsUseCase>(
        () => _i60.GetChatRoomsUseCase(gh<_i27.ChatRepository>()));
    gh.singleton<_i61.SendMessageUserCase>(
        () => _i61.SendMessageUserCase(gh<_i27.ChatRepository>()));
    gh.factory<_i62.AddChatRoomUseCase>(
        () => _i62.AddChatRoomUseCase(gh<_i27.ChatRepository>()));
    gh.factory<_i63.GetChatUseCase>(
        () => _i63.GetChatUseCase(gh<_i27.ChatRepository>()));
    gh.factory<_i64.GetUserMembersUseCase>(
        () => _i64.GetUserMembersUseCase(gh<_i27.ChatRepository>()));
    gh.factory<_i65.GetUsersUseCase>(
        () => _i65.GetUsersUseCase(gh<_i27.ChatRepository>()));
    gh.factory<_i66.UpdateMessageUseCase>(
        () => _i66.UpdateMessageUseCase(gh<_i27.ChatRepository>()));
    gh.factory<_i67.UpdateRoomUseCase>(
        () => _i67.UpdateRoomUseCase(gh<_i27.ChatRepository>()));
    gh.lazySingleton<_i68.GetDailyTimeTableUseCase>(
        () => _i68.GetDailyTimeTableUseCase(gh<_i25.TimeTableRepository>()));
    gh.lazySingleton<_i69.GetOfflineExamTermsUseCase>(
        () => _i69.GetOfflineExamTermsUseCase(gh<_i25.TimeTableRepository>()));
    gh.lazySingleton<_i70.GetOfflineExamTimeTableUseCase>(() =>
        _i70.GetOfflineExamTimeTableUseCase(gh<_i25.TimeTableRepository>()));
    gh.lazySingleton<_i71.HomeWorkNotesRepository>(() =>
        _i72.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i45.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i73.DashBoardRepository>(() => _i74.DashBoardRepoImpl(
          gh<_i37.DashBoardRemoteDataSource>(),
          gh<_i43.ConnectionChecker>(),
          gh<_i48.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i75.AuthRepository>(() => _i76.AuthRepositoryImpl(
          gh<_i43.ConnectionChecker>(),
          authRemoteDataSource: gh<_i46.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i42.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i77.NoticeRepository>(() => _i78.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i47.NoticeRemoteDataSource>()));
    gh.singleton<_i79.DigitalLibraryUseCase>(
        () => _i79.DigitalLibraryUseCase(gh<_i73.DashBoardRepository>()));
    gh.factory<_i80.GetAllNoticeUseCase>(() => _i80.GetAllNoticeUseCase(
        noticeRepository: gh<_i77.NoticeRepository>()));
    gh.lazySingleton<_i81.GetIdRequestTypeUseCase>(
        () => _i81.GetIdRequestTypeUseCase(gh<_i58.IdRequestRepository>()));
    gh.lazySingleton<_i82.PostIdRequestUseCase>(
        () => _i82.PostIdRequestUseCase(gh<_i58.IdRequestRepository>()));
    gh.factory<_i83.FetchWordThoughtUseCase>(
        () => _i83.FetchWordThoughtUseCase(gh<_i73.DashBoardRepository>()));
    gh.factory<_i84.GetRoleMenuUsecase>(
        () => _i84.GetRoleMenuUsecase(gh<_i73.DashBoardRepository>()));
    gh.lazySingleton<_i85.HomeWorkReportsUseCase>(() =>
        _i85.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i71.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i86.GetHomeWorkDetails>(() => _i86.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i71.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i87.NotesReportsUseCase>(() => _i87.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i71.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i88.GetNoteReportDetails>(() => _i88.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i71.HomeWorkNotesRepository>()));
    gh.factory<_i89.GetNoticeBoardPopUp>(
        () => _i89.GetNoticeBoardPopUp(gh<_i77.NoticeRepository>()));
    gh.singleton<_i90.SignOutUseCase>(
        () => _i90.SignOutUseCase(gh<_i75.AuthRepository>()));
    gh.lazySingleton<_i91.GetUserInfoUseCase>(
        () => _i91.GetUserInfoUseCase(gh<_i75.AuthRepository>()));
    gh.lazySingleton<_i92.LoginUseCase>(
        () => _i92.LoginUseCase(gh<_i75.AuthRepository>()));
    gh.lazySingleton<_i93.SaveUserInfoUseCase>(
        () => _i93.SaveUserInfoUseCase(gh<_i75.AuthRepository>()));
    gh.factory<_i94.NoticeBloc>(() => _i94.NoticeBloc(
          gh<_i89.GetNoticeBoardPopUp>(),
          gh<_i80.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i95.AcademicBloc>(() => _i95.AcademicBloc(
          gh<_i39.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i57.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i91.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i38.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i52.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i51.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i96.DrawerBloc>(() => _i96.DrawerBloc(
          gh<_i53.GetNewsBoardUseCase>(),
          gh<_i91.GetUserInfoUseCase>(),
          gh<_i84.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i97.HomeWorkNotesBloc>(() => _i97.HomeWorkNotesBloc(
          gh<_i85.HomeWorkReportsUseCase>(),
          gh<_i91.GetUserInfoUseCase>(),
          gh<_i87.NotesReportsUseCase>(),
          gh<_i88.GetNoteReportDetails>(),
          gh<_i86.GetHomeWorkDetails>(),
        ));
    gh.factory<_i98.DashboardBloc>(() => _i98.DashboardBloc(
          gh<_i83.FetchWordThoughtUseCase>(),
          gh<_i91.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
