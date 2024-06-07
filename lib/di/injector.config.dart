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
    as _i48;

import '../core/api_provider.dart' as _i9;
import '../core/connection_checker.dart' as _i47;
import '../core/firebase_database.dart' as _i10;
import '../core/hive_service.dart' as _i11;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i46;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i52;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i50;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i14;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i41;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i33;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i49;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i26;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i20;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i51;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i25;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i19;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i18;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i15;
import '../mash/data/repositories/academic_repository_impl.dart' as _i35;
import '../mash/data/repositories/auth_repository_impl.dart' as _i82;
import '../mash/data/repositories/chat_repository_impl.dart' as _i30;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i80;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i45;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i76;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i63;
import '../mash/data/repositories/library_repo_impl.dart' as _i37;
import '../mash/data/repositories/notice_repository_impl.dart' as _i84;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i28;
import '../mash/data/repositories/profile_repository_impl.dart' as _i32;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i24;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i17;
import '../mash/domain/repositories/academic_repository.dart' as _i34;
import '../mash/domain/repositories/auth_repository.dart' as _i81;
import '../mash/domain/repositories/chat_repository.dart' as _i29;
import '../mash/domain/repositories/dash_board_repository.dart' as _i79;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i44;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i75;
import '../mash/domain/repositories/id_request_repository.dart' as _i62;
import '../mash/domain/repositories/library_repository.dart' as _i36;
import '../mash/domain/repositories/notice_repository.dart' as _i83;
import '../mash/domain/repositories/profile_repository.dart' as _i31;
import '../mash/domain/repositories/teacher_repository.dart' as _i23;
import '../mash/domain/repositories/time_table_repository.dart' as _i27;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i16;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i42;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i61;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i43;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i55;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i56;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i97;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i98;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i99;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i96;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i66;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i64;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i67;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i68;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i69;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i65;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i70;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i71;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i89;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i85;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i90;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i57;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i92;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i91;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i94;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i93;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i87;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i88;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i77;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i78;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i95;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i86;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i38;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i39;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i40;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i58;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i59;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i60;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i72;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i73;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i74;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i53;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i54;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i101;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i104;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i102;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i103;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i8;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i100;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart'
    as _i13;
import '../mash/presentation/manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart'
    as _i12;

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
    gh.factory<_i8.LibraryBloc>(() => _i8.LibraryBloc());
    gh.singleton<_i9.ApiProvider>(() => _i9.ApiProvider());
    gh.singleton<_i10.FirebaseDatabaseMethods>(
        () => _i10.FirebaseDatabaseMethods());
    gh.lazySingleton<_i11.HiveService>(() => _i11.HiveService());
    gh.lazySingleton<_i12.VehicleTrackerStopsBloc>(
        () => _i12.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i13.TimeTableBloc>(() => _i13.TimeTableBloc());
    gh.lazySingleton<_i14.ChatDataSource>(() => _i14.ChatDataSourceImpl(
          gh<_i10.FirebaseDatabaseMethods>(),
          gh<_i11.HiveService>(),
        ));
    gh.lazySingleton<_i15.VehicleTrackerDataSource>(
        () => _i15.VehicleTrackerImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i16.VehicleTrackerRepository>(
        () => _i17.VehicleTrackerRepoImpl(gh<_i15.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i18.TimeTableDataSource>(
        () => _i18.TimeTableDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i19.TeacherDataSource>(
        () => _i19.TeacherDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i20.LibraryDataSource>(
        () => _i20.LibraryDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i21.AcademicRemoteDataSource>(
        () => _i21.AcademicRemoteDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i22.OfflineExamDataSource>(
        () => _i22.OfflineExamTermImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i23.TeacherRepository>(
        () => _i24.TeacherRepoImpl(gh<_i19.TeacherDataSource>()));
    gh.lazySingleton<_i25.ProfileDataSource>(
        () => _i25.ProfileDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i26.IdRequestTypeDataSource>(
        () => _i26.IdRequestTypeImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i27.TimeTableRepository>(() => _i28.TimeTableRepoImpl(
          gh<_i22.OfflineExamDataSource>(),
          gh<_i18.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i29.ChatRepository>(
        () => _i30.ChatRepositoryImpl(gh<_i14.ChatDataSource>()));
    gh.lazySingleton<_i31.ProfileRepository>(
        () => _i32.ProfileRepositoryImpl(gh<_i25.ProfileDataSource>()));
    gh.lazySingleton<_i33.DrawerMenuItemsRemoteDataSource>(() =>
        _i33.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i34.AcademicRepository>(
        () => _i35.AcademicRepositoryImpl(gh<_i21.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i36.LibraryRepository>(
        () => _i37.LibraryRepoImpl(gh<_i20.LibraryDataSource>()));
    gh.factory<_i38.GetSiblingsUseCase>(
        () => _i38.GetSiblingsUseCase(gh<_i31.ProfileRepository>()));
    gh.singleton<_i39.GetUserDetailsUseCase>(
        () => _i39.GetUserDetailsUseCase(gh<_i31.ProfileRepository>()));
    gh.singleton<_i40.UpdateProfileUseCase>(
        () => _i40.UpdateProfileUseCase(gh<_i31.ProfileRepository>()));
    gh.lazySingleton<_i41.DashBoardRemoteDataSource>(() =>
        _i41.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.factory<_i42.GetAcademicSubjectUseCase>(() =>
        _i42.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i34.AcademicRepository>()));
    gh.factory<_i43.GetDivisionDetailsUseCase>(() =>
        _i43.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i44.DrawerMenuItemsRepository>(() =>
        _i45.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i33.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i46.AuthLocalDataSource>(() =>
        _i46.AuthLocalDataSourceImpl(hiveService: gh<_i11.HiveService>()));
    gh.lazySingleton<_i47.ConnectionChecker>(
        () => _i47.ConnectionCheckerImpl(gh<_i48.InternetConnectionChecker>()));
    gh.lazySingleton<_i49.HomeWorkNotesRemoteDataSource>(() =>
        _i49.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i50.AuthRemoteDataSource>(
        () => _i50.AuthRemoteDataSourceImpl(
              gh<_i9.ApiProvider>(),
              gh<_i10.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i51.NoticeRemoteDataSource>(() =>
        _i51.NoticeRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i52.DashBoardLocalDataSource>(() =>
        _i52.DashBoardLocalDataSourceImpl(hiveService: gh<_i11.HiveService>()));
    gh.lazySingleton<_i53.GetVehicleCurrentLocation>(() =>
        _i53.GetVehicleCurrentLocation(gh<_i16.VehicleTrackerRepository>()));
    gh.lazySingleton<_i54.GetVehicleTrackerStopsUseCase>(() =>
        _i54.GetVehicleTrackerStopsUseCase(
            gh<_i16.VehicleTrackerRepository>()));
    gh.lazySingleton<_i55.GetSyllabusTermsUseCase>(() =>
        _i55.GetSyllabusTermsUseCase(
            academicRepository: gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i56.GetSyllabusUseCase>(() => _i56.GetSyllabusUseCase(
        academicRepository: gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i57.GetNewsBoardUseCase>(() => _i57.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i44.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i58.GetTeacherRatingUseCase>(
        () => _i58.GetTeacherRatingUseCase(gh<_i23.TeacherRepository>()));
    gh.lazySingleton<_i59.PostTeacherRatingUseCase>(
        () => _i59.PostTeacherRatingUseCase(gh<_i23.TeacherRepository>()));
    gh.lazySingleton<_i60.GetTeacherRatingQuestionsUseCase>(() =>
        _i60.GetTeacherRatingQuestionsUseCase(gh<_i23.TeacherRepository>()));
    gh.factory<_i61.GetClassInforUseCase>(
        () => _i61.GetClassInforUseCase(gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i62.IdRequestRepository>(
        () => _i63.IdRequestRepoImpl(gh<_i26.IdRequestTypeDataSource>()));
    gh.singleton<_i64.GetChatRoomsUseCase>(
        () => _i64.GetChatRoomsUseCase(gh<_i29.ChatRepository>()));
    gh.singleton<_i65.SendMessageUserCase>(
        () => _i65.SendMessageUserCase(gh<_i29.ChatRepository>()));
    gh.factory<_i66.AddChatRoomUseCase>(
        () => _i66.AddChatRoomUseCase(gh<_i29.ChatRepository>()));
    gh.factory<_i67.GetChatUseCase>(
        () => _i67.GetChatUseCase(gh<_i29.ChatRepository>()));
    gh.factory<_i68.GetUserMembersUseCase>(
        () => _i68.GetUserMembersUseCase(gh<_i29.ChatRepository>()));
    gh.factory<_i69.GetUsersUseCase>(
        () => _i69.GetUsersUseCase(gh<_i29.ChatRepository>()));
    gh.factory<_i70.UpdateMessageUseCase>(
        () => _i70.UpdateMessageUseCase(gh<_i29.ChatRepository>()));
    gh.factory<_i71.UpdateRoomUseCase>(
        () => _i71.UpdateRoomUseCase(gh<_i29.ChatRepository>()));
    gh.lazySingleton<_i72.GetDailyTimeTableUseCase>(
        () => _i72.GetDailyTimeTableUseCase(gh<_i27.TimeTableRepository>()));
    gh.lazySingleton<_i73.GetOfflineExamTermsUseCase>(
        () => _i73.GetOfflineExamTermsUseCase(gh<_i27.TimeTableRepository>()));
    gh.lazySingleton<_i74.GetOfflineExamTimeTableUseCase>(() =>
        _i74.GetOfflineExamTimeTableUseCase(gh<_i27.TimeTableRepository>()));
    gh.lazySingleton<_i75.HomeWorkNotesRepository>(() =>
        _i76.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i49.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i77.GetPhysicalLibraryUseCase>(
        () => _i77.GetPhysicalLibraryUseCase(gh<_i36.LibraryRepository>()));
    gh.lazySingleton<_i78.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i78.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i36.LibraryRepository>()));
    gh.lazySingleton<_i79.DashBoardRepository>(() => _i80.DashBoardRepoImpl(
          gh<_i41.DashBoardRemoteDataSource>(),
          gh<_i47.ConnectionChecker>(),
          gh<_i52.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i81.AuthRepository>(() => _i82.AuthRepositoryImpl(
          gh<_i47.ConnectionChecker>(),
          authRemoteDataSource: gh<_i50.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i46.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i83.NoticeRepository>(() => _i84.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i51.NoticeRemoteDataSource>()));
    gh.singleton<_i85.DigitalLibraryUseCase>(
        () => _i85.DigitalLibraryUseCase(gh<_i79.DashBoardRepository>()));
    gh.factory<_i86.GetAllNoticeUseCase>(() => _i86.GetAllNoticeUseCase(
        noticeRepository: gh<_i83.NoticeRepository>()));
    gh.lazySingleton<_i87.GetIdRequestTypeUseCase>(
        () => _i87.GetIdRequestTypeUseCase(gh<_i62.IdRequestRepository>()));
    gh.lazySingleton<_i88.PostIdRequestUseCase>(
        () => _i88.PostIdRequestUseCase(gh<_i62.IdRequestRepository>()));
    gh.factory<_i89.FetchWordThoughtUseCase>(
        () => _i89.FetchWordThoughtUseCase(gh<_i79.DashBoardRepository>()));
    gh.factory<_i90.GetRoleMenuUsecase>(
        () => _i90.GetRoleMenuUsecase(gh<_i79.DashBoardRepository>()));
    gh.lazySingleton<_i91.HomeWorkReportsUseCase>(() =>
        _i91.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i75.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i92.GetHomeWorkDetails>(() => _i92.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i75.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i93.NotesReportsUseCase>(() => _i93.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i75.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i94.GetNoteReportDetails>(() => _i94.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i75.HomeWorkNotesRepository>()));
    gh.factory<_i95.GetNoticeBoardPopUp>(
        () => _i95.GetNoticeBoardPopUp(gh<_i83.NoticeRepository>()));
    gh.singleton<_i96.SignOutUseCase>(
        () => _i96.SignOutUseCase(gh<_i81.AuthRepository>()));
    gh.lazySingleton<_i97.GetUserInfoUseCase>(
        () => _i97.GetUserInfoUseCase(gh<_i81.AuthRepository>()));
    gh.lazySingleton<_i98.LoginUseCase>(
        () => _i98.LoginUseCase(gh<_i81.AuthRepository>()));
    gh.lazySingleton<_i99.SaveUserInfoUseCase>(
        () => _i99.SaveUserInfoUseCase(gh<_i81.AuthRepository>()));
    gh.factory<_i100.NoticeBloc>(() => _i100.NoticeBloc(
          gh<_i95.GetNoticeBoardPopUp>(),
          gh<_i86.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i101.AcademicBloc>(() => _i101.AcademicBloc(
          gh<_i43.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i61.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i97.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i42.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i56.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i55.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i102.DrawerBloc>(() => _i102.DrawerBloc(
          gh<_i57.GetNewsBoardUseCase>(),
          gh<_i97.GetUserInfoUseCase>(),
          gh<_i90.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i103.HomeWorkNotesBloc>(() => _i103.HomeWorkNotesBloc(
          gh<_i91.HomeWorkReportsUseCase>(),
          gh<_i97.GetUserInfoUseCase>(),
          gh<_i93.NotesReportsUseCase>(),
          gh<_i94.GetNoteReportDetails>(),
          gh<_i92.GetHomeWorkDetails>(),
        ));
    gh.factory<_i104.DashboardBloc>(() => _i104.DashboardBloc(
          gh<_i89.FetchWordThoughtUseCase>(),
          gh<_i97.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
