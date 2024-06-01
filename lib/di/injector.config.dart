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
    as _i42;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i41;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i40;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i50;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i48;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i13;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i35;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i29;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i26;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i45;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i23;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i49;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i17;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i14;
import '../mash/data/repositories/academic_repository_impl.dart' as _i31;
import '../mash/data/repositories/auth_repository_impl.dart' as _i78;
import '../mash/data/repositories/chat_repository_impl.dart' as _i25;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i76;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i39;
import '../mash/data/repositories/home_repository_impl.dart' as _i44;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i74;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i62;
import '../mash/data/repositories/notice_repository_impl.dart' as _i80;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i47;
import '../mash/data/repositories/profile_repository_impl.dart' as _i28;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i21;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i16;
import '../mash/domain/repositories/academic_repository.dart' as _i30;
import '../mash/domain/repositories/auth_repository.dart' as _i77;
import '../mash/domain/repositories/chat_repository.dart' as _i24;
import '../mash/domain/repositories/dash_board_repository.dart' as _i75;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i38;
import '../mash/domain/repositories/home_repository.dart' as _i43;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i73;
import '../mash/domain/repositories/id_request_repository.dart' as _i61;
import '../mash/domain/repositories/notice_repository.dart' as _i79;
import '../mash/domain/repositories/profile_repository.dart' as _i27;
import '../mash/domain/repositories/teacher_repository.dart' as _i20;
import '../mash/domain/repositories/time_table_repository.dart' as _i46;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i15;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i36;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i59;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i37;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i53;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i54;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i93;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i94;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i95;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i92;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i65;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i63;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i66;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i67;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i68;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i64;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i69;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i70;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i85;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i81;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i86;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i55;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i60;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i88;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i87;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i90;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i89;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i83;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i84;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i91;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i82;
import '../mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_exam_terms_use_case.dart'
    as _i71;
import '../mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_time_table_use_case.dart'
    as _i72;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i32;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i33;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i34;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i56;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i57;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i58;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i51;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i52;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i98;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i101;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i99;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i96;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i100;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i97;
import '../mash/presentation/manager/bloc/offline_exam_time_table_bloc/offline_exam_time_table_bloc.dart'
    as _i11;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i7;
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
    gh.singleton<_i8.ApiProvider>(() => _i8.ApiProvider());
    gh.singleton<_i9.FirebaseDatabaseMethods>(
        () => _i9.FirebaseDatabaseMethods());
    gh.lazySingleton<_i10.HiveService>(() => _i10.HiveService());
    gh.lazySingleton<_i11.OfflineExamTimeTableBloc>(
        () => _i11.OfflineExamTimeTableBloc());
    gh.lazySingleton<_i12.VehicleTrackerStopsBloc>(
        () => _i12.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i13.ChatDataSource>(() => _i13.ChatDataSourceImpl(
          gh<_i9.FirebaseDatabaseMethods>(),
          gh<_i10.HiveService>(),
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
    gh.lazySingleton<_i26.HomeRemoteDataSource>(() =>
        _i26.HomeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i27.ProfileRepository>(
        () => _i28.ProfileRepositoryImpl(gh<_i22.ProfileDataSource>()));
    gh.lazySingleton<_i29.DrawerMenuItemsRemoteDataSource>(() =>
        _i29.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i30.AcademicRepository>(
        () => _i31.AcademicRepositoryImpl(gh<_i18.AcademicRemoteDataSource>()));
    gh.factory<_i32.GetSiblingsUseCase>(
        () => _i32.GetSiblingsUseCase(gh<_i27.ProfileRepository>()));
    gh.singleton<_i33.GetUserDetailsUseCase>(
        () => _i33.GetUserDetailsUseCase(gh<_i27.ProfileRepository>()));
    gh.singleton<_i34.UpdateProfileUseCase>(
        () => _i34.UpdateProfileUseCase(gh<_i27.ProfileRepository>()));
    gh.lazySingleton<_i35.DashBoardRemoteDataSource>(() =>
        _i35.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i36.GetAcademicSubjectUseCase>(() =>
        _i36.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i30.AcademicRepository>()));
    gh.factory<_i37.GetDivisionDetailsUseCase>(() =>
        _i37.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i30.AcademicRepository>()));
    gh.lazySingleton<_i38.DrawerMenuItemsRepository>(() =>
        _i39.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i29.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i40.AuthLocalDataSource>(() =>
        _i40.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i41.ConnectionChecker>(
        () => _i41.ConnectionCheckerImpl(gh<_i42.InternetConnectionChecker>()));
    gh.lazySingleton<_i43.HomeRepository>(() => _i44.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i26.HomeRemoteDataSource>()));
    gh.lazySingleton<_i45.HomeWorkNotesRemoteDataSource>(() =>
        _i45.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i46.TimeTableRepository>(
        () => _i47.OfflineExamRepoImpl(gh<_i19.OfflineExamDataSource>()));
    gh.lazySingleton<_i48.AuthRemoteDataSource>(
        () => _i48.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i49.NoticeRemoteDataSource>(() =>
        _i49.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i50.DashBoardLocalDataSource>(() =>
        _i50.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i51.GetVehicleCurrentLocation>(() =>
        _i51.GetVehicleCurrentLocation(gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i52.GetVehicleTrackerStopsUseCase>(() =>
        _i52.GetVehicleTrackerStopsUseCase(
            gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i53.GetSyllabusTermsUseCase>(() =>
        _i53.GetSyllabusTermsUseCase(
            academicRepository: gh<_i30.AcademicRepository>()));
    gh.lazySingleton<_i54.GetSyllabusUseCase>(() => _i54.GetSyllabusUseCase(
        academicRepository: gh<_i30.AcademicRepository>()));
    gh.lazySingleton<_i55.GetNewsBoardUseCase>(() => _i55.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i38.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i56.GetTeacherRatingUseCase>(
        () => _i56.GetTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i57.PostTeacherRatingUseCase>(
        () => _i57.PostTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i58.GetTeacherRatingQuestionsUseCase>(() =>
        _i58.GetTeacherRatingQuestionsUseCase(gh<_i20.TeacherRepository>()));
    gh.factory<_i59.GetClassInforUseCase>(
        () => _i59.GetClassInforUseCase(gh<_i30.AcademicRepository>()));
    gh.lazySingleton<_i60.GetAddOnUsecase>(
        () => _i60.GetAddOnUsecase(homeRepository: gh<_i43.HomeRepository>()));
    gh.lazySingleton<_i61.IdRequestRepository>(
        () => _i62.IdRequestRepoImpl(gh<_i23.IdRequestTypeDataSource>()));
    gh.singleton<_i63.GetChatRoomsUseCase>(
        () => _i63.GetChatRoomsUseCase(gh<_i24.ChatRepository>()));
    gh.singleton<_i64.SendMessageUserCase>(
        () => _i64.SendMessageUserCase(gh<_i24.ChatRepository>()));
    gh.factory<_i65.AddChatRoomUseCase>(
        () => _i65.AddChatRoomUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i66.GetChatUseCase>(
        () => _i66.GetChatUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i67.GetUserMembersUseCase>(
        () => _i67.GetUserMembersUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i68.GetUsersUseCase>(
        () => _i68.GetUsersUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i69.UpdateMessageUseCase>(
        () => _i69.UpdateMessageUseCase(gh<_i24.ChatRepository>()));
    gh.factory<_i70.UpdateRoomUseCase>(
        () => _i70.UpdateRoomUseCase(gh<_i24.ChatRepository>()));
    gh.lazySingleton<_i71.GetOfflineExamTermsUseCase>(
        () => _i71.GetOfflineExamTermsUseCase(gh<_i46.TimeTableRepository>()));
    gh.lazySingleton<_i72.GetOfflineExamTimeTableUseCase>(() =>
        _i72.GetOfflineExamTimeTableUseCase(gh<_i46.TimeTableRepository>()));
    gh.lazySingleton<_i73.HomeWorkNotesRepository>(() =>
        _i74.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i45.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i75.DashBoardRepository>(() => _i76.DashBoardRepoImpl(
          gh<_i35.DashBoardRemoteDataSource>(),
          gh<_i41.ConnectionChecker>(),
          gh<_i50.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i77.AuthRepository>(() => _i78.AuthRepositoryImpl(
          gh<_i41.ConnectionChecker>(),
          authRemoteDataSource: gh<_i48.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i40.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i79.NoticeRepository>(() => _i80.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i49.NoticeRemoteDataSource>()));
    gh.singleton<_i81.DigitalLibraryUseCase>(
        () => _i81.DigitalLibraryUseCase(gh<_i75.DashBoardRepository>()));
    gh.factory<_i82.GetAllNoticeUseCase>(() => _i82.GetAllNoticeUseCase(
        noticeRepository: gh<_i79.NoticeRepository>()));
    gh.lazySingleton<_i83.GetIdRequestTypeUseCase>(
        () => _i83.GetIdRequestTypeUseCase(gh<_i61.IdRequestRepository>()));
    gh.lazySingleton<_i84.PostIdRequestUseCase>(
        () => _i84.PostIdRequestUseCase(gh<_i61.IdRequestRepository>()));
    gh.factory<_i85.FetchWordThoughtUseCase>(
        () => _i85.FetchWordThoughtUseCase(gh<_i75.DashBoardRepository>()));
    gh.factory<_i86.GetRoleMenuUsecase>(
        () => _i86.GetRoleMenuUsecase(gh<_i75.DashBoardRepository>()));
    gh.lazySingleton<_i87.HomeWorkReportsUseCase>(() =>
        _i87.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i73.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i88.GetHomeWorkDetails>(() => _i88.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i73.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i89.NotesReportsUseCase>(() => _i89.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i73.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i90.GetNoteReportDetails>(() => _i90.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i73.HomeWorkNotesRepository>()));
    gh.factory<_i91.GetNoticeBoardPopUp>(
        () => _i91.GetNoticeBoardPopUp(gh<_i79.NoticeRepository>()));
    gh.singleton<_i92.SignOutUseCase>(
        () => _i92.SignOutUseCase(gh<_i77.AuthRepository>()));
    gh.lazySingleton<_i93.GetUserInfoUseCase>(
        () => _i93.GetUserInfoUseCase(gh<_i77.AuthRepository>()));
    gh.lazySingleton<_i94.LoginUseCase>(
        () => _i94.LoginUseCase(gh<_i77.AuthRepository>()));
    gh.lazySingleton<_i95.SaveUserInfoUseCase>(
        () => _i95.SaveUserInfoUseCase(gh<_i77.AuthRepository>()));
    gh.factory<_i96.HomeBloc>(() => _i96.HomeBloc(
          gh<_i60.GetAddOnUsecase>(),
          gh<_i93.GetUserInfoUseCase>(),
        ));
    gh.factory<_i97.NoticeBloc>(() => _i97.NoticeBloc(
          gh<_i91.GetNoticeBoardPopUp>(),
          gh<_i82.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i98.AcademicBloc>(() => _i98.AcademicBloc(
          gh<_i37.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i59.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i93.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i36.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i54.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i53.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i99.DrawerBloc>(() => _i99.DrawerBloc(
          gh<_i55.GetNewsBoardUseCase>(),
          gh<_i93.GetUserInfoUseCase>(),
          gh<_i86.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i100.HomeWorkNotesBloc>(() => _i100.HomeWorkNotesBloc(
          gh<_i87.HomeWorkReportsUseCase>(),
          gh<_i93.GetUserInfoUseCase>(),
          gh<_i89.NotesReportsUseCase>(),
          gh<_i90.GetNoteReportDetails>(),
          gh<_i88.GetHomeWorkDetails>(),
        ));
    gh.factory<_i101.DashboardBloc>(() => _i101.DashboardBloc(
          gh<_i85.FetchWordThoughtUseCase>(),
          gh<_i93.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
