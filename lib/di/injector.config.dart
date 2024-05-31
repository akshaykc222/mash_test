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
    as _i41;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i40;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i12;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i39;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i47;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i45;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i13;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i34;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i28;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i42;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i23;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i46;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i17;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i14;
import '../mash/data/repositories/academic_repository_impl.dart' as _i30;
import '../mash/data/repositories/auth_repository_impl.dart' as _i74;
import '../mash/data/repositories/chat_repository_impl.dart' as _i25;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i72;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i38;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i70;
import '../mash/data/repositories/id_transfer_type_repo_impl.dart' as _i66;
import '../mash/data/repositories/notice_repository_impl.dart' as _i76;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i44;
import '../mash/data/repositories/profile_repository_impl.dart' as _i27;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i21;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i16;
import '../mash/domain/repositories/academic_repository.dart' as _i29;
import '../mash/domain/repositories/auth_repository.dart' as _i73;
import '../mash/domain/repositories/chat_repository.dart' as _i24;
import '../mash/domain/repositories/dash_board_repository.dart' as _i71;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i37;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i69;
import '../mash/domain/repositories/id_request_repository.dart' as _i65;
import '../mash/domain/repositories/notice_repository.dart' as _i75;
import '../mash/domain/repositories/profile_repository.dart' as _i26;
import '../mash/domain/repositories/teacher_repository.dart' as _i20;
import '../mash/domain/repositories/time_table_repository.dart' as _i43;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i15;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i35;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i56;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i36;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i51;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i50;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i88;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i90;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i89;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i87;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i59;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i57;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i61;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i62;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i63;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i58;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i60;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i64;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i80;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i77;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i81;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i52;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i85;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i83;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i84;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i82;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i79;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i86;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i78;
import '../mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_exam_terms_use_case.dart'
    as _i68;
import '../mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_time_table_use_case.dart'
    as _i67;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i31;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i33;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i32;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i54;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i55;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i53;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i49;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i48;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i92;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i6;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i95;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i93;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i94;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i91;
import '../mash/presentation/manager/bloc/offline_exam_time_table_bloc/offline_exam_time_table_bloc.dart'
    as _i11;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i3;
import '../mash/presentation/manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart'
    as _i10;

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
    gh.factory<_i3.TeacherBloc>(() => _i3.TeacherBloc());
    gh.factory<_i4.ChatBloc>(() => _i4.ChatBloc());
    gh.factory<_i5.IdRequestBloc>(() => _i5.IdRequestBloc());
    gh.factory<_i6.AuthBloc>(() => _i6.AuthBloc());
    gh.factory<_i7.ProfileBloc>(() => _i7.ProfileBloc());
    gh.singleton<_i8.ApiProvider>(() => _i8.ApiProvider());
    gh.singleton<_i9.FirebaseDatabaseMethods>(
        () => _i9.FirebaseDatabaseMethods());
    gh.lazySingleton<_i10.VehicleTrackerStopsBloc>(
        () => _i10.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i11.OfflineExamTimeTableBloc>(
        () => _i11.OfflineExamTimeTableBloc());
    gh.lazySingleton<_i12.HiveService>(() => _i12.HiveService());
    gh.lazySingleton<_i13.ChatDataSource>(() => _i13.ChatDataSourceImpl(
          gh<_i9.FirebaseDatabaseMethods>(),
          gh<_i12.HiveService>(),
        ));
    gh.lazySingleton<_i14.VehicleTrackerDataSource>(
        () => _i14.VehicleTrackerImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i15.VehicleTrackerRepository>(
        () => _i16.VehicleTrackerRepoImpl(gh<_i14.VehicleTrackerDataSource>()));
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
    gh.lazySingleton<_i24.ChatRepository>(
        () => _i25.ChatRepositoryImpl(gh<_i13.ChatDataSource>()));
    gh.lazySingleton<_i26.ProfileRepository>(
        () => _i27.ProfileRepositoryImpl(gh<_i22.ProfileDataSource>()));
    gh.lazySingleton<_i28.DrawerMenuItemsRemoteDataSource>(() =>
        _i28.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i29.AcademicRepository>(
        () => _i30.AcademicRepositoryImpl(gh<_i18.AcademicRemoteDataSource>()));
    gh.factory<_i31.GetSiblingsUseCase>(
        () => _i31.GetSiblingsUseCase(gh<_i26.ProfileRepository>()));
    gh.singleton<_i32.UpdateProfileUseCase>(
        () => _i32.UpdateProfileUseCase(gh<_i26.ProfileRepository>()));
    gh.singleton<_i33.GetUserDetailsUseCase>(
        () => _i33.GetUserDetailsUseCase(gh<_i26.ProfileRepository>()));
    gh.lazySingleton<_i34.DashBoardRemoteDataSource>(() =>
        _i34.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i35.GetAcademicSubjectUseCase>(() =>
        _i35.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i29.AcademicRepository>()));
    gh.factory<_i36.GetDivisionDetailsUseCase>(() =>
        _i36.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i29.AcademicRepository>()));
    gh.lazySingleton<_i37.DrawerMenuItemsRepository>(() =>
        _i38.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i28.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i39.AuthLocalDataSource>(() =>
        _i39.AuthLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i40.ConnectionChecker>(
        () => _i40.ConnectionCheckerImpl(gh<_i41.InternetConnectionChecker>()));
    gh.lazySingleton<_i42.HomeWorkNotesRemoteDataSource>(() =>
        _i42.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i43.TimeTableRepository>(
        () => _i44.OfflineExamRepoImpl(gh<_i19.OfflineExamDataSource>()));
    gh.lazySingleton<_i45.AuthRemoteDataSource>(
        () => _i45.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i46.NoticeRemoteDataSource>(() =>
        _i46.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i47.DashBoardLocalDataSource>(() =>
        _i47.DashBoardLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i48.GetVehicleTrackerStopsUseCase>(() =>
        _i48.GetVehicleTrackerStopsUseCase(
            gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i49.GetVehicleCurrentLocation>(() =>
        _i49.GetVehicleCurrentLocation(gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i50.GetSyllabusUseCase>(() => _i50.GetSyllabusUseCase(
        academicRepository: gh<_i29.AcademicRepository>()));
    gh.lazySingleton<_i51.GetSyllabusTermsUseCase>(() =>
        _i51.GetSyllabusTermsUseCase(
            academicRepository: gh<_i29.AcademicRepository>()));
    gh.lazySingleton<_i52.GetNewsBoardUseCase>(() => _i52.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i37.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i53.GetTeacherRatingQuestionsUseCase>(() =>
        _i53.GetTeacherRatingQuestionsUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i54.GetTeacherRatingUseCase>(
        () => _i54.GetTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i55.PostTeacherRatingUseCase>(
        () => _i55.PostTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.factory<_i56.GetClassInforUseCase>(
        () => _i56.GetClassInforUseCase(gh<_i29.AcademicRepository>()));
    gh.singleton<_i57.GetChatRoomsUseCase>(
        () => _i57.GetChatRoomsUseCase(gh<_i24.ChatRepository>()));
    gh.singleton<_i58.SendMessageUserCase>(
        () => _i58.SendMessageUserCase(gh<_i24.ChatRepository>()));
    gh.factory<_i59.AddChatRoomUseCase>(
        () => _i59.AddChatRoomUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i60.UpdateMessageUseCase>(
        () => _i60.UpdateMessageUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i61.GetChatUseCase>(
        () => _i61.GetChatUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i62.GetUserMembersUseCase>(
        () => _i62.GetUserMembersUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i63.GetUsersUseCase>(
        () => _i63.GetUsersUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i64.UpdateRoomUseCase>(
        () => _i64.UpdateRoomUseCase(gh<_i24.ChatRepository>()));
    gh.lazySingleton<_i65.IdRequestRepository>(
        () => _i66.IdRequestTypeRepoImpl(gh<_i23.IdRequestTypeDataSource>()));
    gh.lazySingleton<_i67.GetOfflineExamTimeTableUseCase>(() =>
        _i67.GetOfflineExamTimeTableUseCase(gh<_i43.TimeTableRepository>()));
    gh.lazySingleton<_i68.GetOfflineExamTermsUseCase>(
        () => _i68.GetOfflineExamTermsUseCase(gh<_i43.TimeTableRepository>()));
    gh.lazySingleton<_i69.HomeWorkNotesRepository>(() =>
        _i70.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i42.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i71.DashBoardRepository>(() => _i72.DashBoardRepoImpl(
          gh<_i34.DashBoardRemoteDataSource>(),
          gh<_i40.ConnectionChecker>(),
          gh<_i47.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i73.AuthRepository>(() => _i74.AuthRepositoryImpl(
          gh<_i40.ConnectionChecker>(),
          authRemoteDataSource: gh<_i45.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i39.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i75.NoticeRepository>(() => _i76.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i46.NoticeRemoteDataSource>()));
    gh.singleton<_i77.DigitalLibraryUseCase>(
        () => _i77.DigitalLibraryUseCase(gh<_i71.DashBoardRepository>()));
    gh.factory<_i78.GetAllNoticeUseCase>(() => _i78.GetAllNoticeUseCase(
        noticeRepository: gh<_i75.NoticeRepository>()));
    gh.lazySingleton<_i79.GetIdRequestTypeUseCase>(
        () => _i79.GetIdRequestTypeUseCase(gh<_i65.IdRequestRepository>()));
    gh.factory<_i80.FetchWordThoughtUseCase>(
        () => _i80.FetchWordThoughtUseCase(gh<_i71.DashBoardRepository>()));
    gh.factory<_i81.GetRoleMenuUsecase>(
        () => _i81.GetRoleMenuUsecase(gh<_i71.DashBoardRepository>()));
    gh.lazySingleton<_i82.NotesReportsUseCase>(() => _i82.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i69.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i83.HomeWorkReportsUseCase>(() =>
        _i83.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i69.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i84.GetNoteReportDetails>(() => _i84.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i69.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i85.GetHomeWorkDetails>(() => _i85.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i69.HomeWorkNotesRepository>()));
    gh.factory<_i86.GetNoticeBoardPopUp>(
        () => _i86.GetNoticeBoardPopUp(gh<_i75.NoticeRepository>()));
    gh.singleton<_i87.SignOutUseCase>(
        () => _i87.SignOutUseCase(gh<_i73.AuthRepository>()));
    gh.lazySingleton<_i88.GetUserInfoUseCase>(
        () => _i88.GetUserInfoUseCase(gh<_i73.AuthRepository>()));
    gh.lazySingleton<_i89.SaveUserInfoUseCase>(
        () => _i89.SaveUserInfoUseCase(gh<_i73.AuthRepository>()));
    gh.lazySingleton<_i90.LoginUseCase>(
        () => _i90.LoginUseCase(gh<_i73.AuthRepository>()));
    gh.factory<_i91.NoticeBloc>(() => _i91.NoticeBloc(
          gh<_i86.GetNoticeBoardPopUp>(),
          gh<_i78.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i92.AcademicBloc>(() => _i92.AcademicBloc(
          gh<_i36.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i56.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i88.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i35.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i50.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i51.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i93.DrawerBloc>(() => _i93.DrawerBloc(
          gh<_i52.GetNewsBoardUseCase>(),
          gh<_i88.GetUserInfoUseCase>(),
          gh<_i81.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i94.HomeWorkNotesBloc>(() => _i94.HomeWorkNotesBloc(
          gh<_i83.HomeWorkReportsUseCase>(),
          gh<_i88.GetUserInfoUseCase>(),
          gh<_i82.NotesReportsUseCase>(),
          gh<_i84.GetNoteReportDetails>(),
          gh<_i85.GetHomeWorkDetails>(),
        ));
    gh.factory<_i95.DashboardBloc>(() => _i95.DashboardBloc(
          gh<_i80.FetchWordThoughtUseCase>(),
          gh<_i88.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
