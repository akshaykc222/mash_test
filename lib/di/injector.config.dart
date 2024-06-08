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
    as _i40;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i39;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i38;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i44;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i42;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i13;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i33;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i27;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i41;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i22;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i43;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i21;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i17;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i14;
import '../mash/data/repositories/academic_repository_impl.dart' as _i29;
import '../mash/data/repositories/auth_repository_impl.dart' as _i71;
import '../mash/data/repositories/chat_repository_impl.dart' as _i24;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i69;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i37;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i65;
import '../mash/data/repositories/id_transfer_type_repo_impl.dart' as _i63;
import '../mash/data/repositories/notice_repository_impl.dart' as _i73;
import '../mash/data/repositories/profile_repository_impl.dart' as _i26;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i20;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i16;
import '../mash/domain/repositories/academic_repository.dart' as _i28;
import '../mash/domain/repositories/auth_repository.dart' as _i70;
import '../mash/domain/repositories/chat_repository.dart' as _i23;
import '../mash/domain/repositories/dash_board_repository.dart' as _i68;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i36;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i64;
import '../mash/domain/repositories/id_request_repository.dart' as _i62;
import '../mash/domain/repositories/notice_repository.dart' as _i72;
import '../mash/domain/repositories/profile_repository.dart' as _i25;
import '../mash/domain/repositories/teacher_repository.dart' as _i19;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i15;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i34;
import '../mash/domain/use_cases/academic/get_academic_type_use_case.dart'
    as _i67;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i53;
import '../mash/domain/use_cases/academic/get_digital_library_use_case.dart'
    as _i66;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i35;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i47;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i48;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i84;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i85;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i86;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i83;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i56;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i54;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i57;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i58;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i59;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i55;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i60;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i61;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i76;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i77;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i49;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i79;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i78;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i81;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i80;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i75;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i82;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i74;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i30;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i31;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i32;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i50;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i51;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i52;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i45;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i46;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i88;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i91;
import '../mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart'
    as _i12;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i89;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i90;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i87;
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
    gh.lazySingleton<_i12.DigitalLibraryBloc>(() => _i12.DigitalLibraryBloc());
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
    gh.lazySingleton<_i19.TeacherRepository>(
        () => _i20.TeacherRepoImpl(gh<_i17.TeacherDataSource>()));
    gh.lazySingleton<_i21.ProfileDataSource>(
        () => _i21.ProfileDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i22.IdRequestTypeDataSource>(
        () => _i22.IdRequestTypeImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i23.ChatRepository>(
        () => _i24.ChatRepositoryImpl(gh<_i13.ChatDataSource>()));
    gh.lazySingleton<_i25.ProfileRepository>(
        () => _i26.ProfileRepositoryImpl(gh<_i21.ProfileDataSource>()));
    gh.lazySingleton<_i27.DrawerMenuItemsRemoteDataSource>(() =>
        _i27.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i28.AcademicRepository>(
        () => _i29.AcademicRepositoryImpl(gh<_i18.AcademicRemoteDataSource>()));
    gh.factory<_i30.GetSiblingsUseCase>(
        () => _i30.GetSiblingsUseCase(gh<_i25.ProfileRepository>()));
    gh.singleton<_i31.GetUserDetailsUseCase>(
        () => _i31.GetUserDetailsUseCase(gh<_i25.ProfileRepository>()));
    gh.singleton<_i32.UpdateProfileUseCase>(
        () => _i32.UpdateProfileUseCase(gh<_i25.ProfileRepository>()));
    gh.lazySingleton<_i33.DashBoardRemoteDataSource>(() =>
        _i33.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i34.GetAcademicSubjectUseCase>(() =>
        _i34.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i28.AcademicRepository>()));
    gh.lazySingleton<_i35.GetDivisionDetailsUseCase>(() =>
        _i35.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i28.AcademicRepository>()));
    gh.lazySingleton<_i36.DrawerMenuItemsRepository>(() =>
        _i37.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i27.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i38.AuthLocalDataSource>(() =>
        _i38.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i39.ConnectionChecker>(
        () => _i39.ConnectionCheckerImpl(gh<_i40.InternetConnectionChecker>()));
    gh.lazySingleton<_i41.HomeWorkNotesRemoteDataSource>(() =>
        _i41.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i42.AuthRemoteDataSource>(
        () => _i42.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i43.NoticeRemoteDataSource>(() =>
        _i43.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i44.DashBoardLocalDataSource>(() =>
        _i44.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i45.GetVehicleCurrentLocation>(() =>
        _i45.GetVehicleCurrentLocation(gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i46.GetVehicleTrackerStopsUseCase>(() =>
        _i46.GetVehicleTrackerStopsUseCase(
            gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i47.GetSyllabusTermsUseCase>(() =>
        _i47.GetSyllabusTermsUseCase(
            academicRepository: gh<_i28.AcademicRepository>()));
    gh.lazySingleton<_i48.GetSyllabusUseCase>(() => _i48.GetSyllabusUseCase(
        academicRepository: gh<_i28.AcademicRepository>()));
    gh.lazySingleton<_i49.GetNewsBoardUseCase>(() => _i49.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i36.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i50.GetTeacherRatingUseCase>(
        () => _i50.GetTeacherRatingUseCase(gh<_i19.TeacherRepository>()));
    gh.lazySingleton<_i51.PostTeacherRatingUseCase>(
        () => _i51.PostTeacherRatingUseCase(gh<_i19.TeacherRepository>()));
    gh.lazySingleton<_i52.GetTeacherRatingQuestionsUseCase>(() =>
        _i52.GetTeacherRatingQuestionsUseCase(gh<_i19.TeacherRepository>()));
    gh.lazySingleton<_i53.GetClassInforUseCase>(
        () => _i53.GetClassInforUseCase(gh<_i28.AcademicRepository>()));
    gh.singleton<_i54.GetChatRoomsUseCase>(
        () => _i54.GetChatRoomsUseCase(gh<_i23.ChatRepository>()));
    gh.singleton<_i55.SendMessageUserCase>(
        () => _i55.SendMessageUserCase(gh<_i23.ChatRepository>()));
    gh.factory<_i56.AddChatRoomUseCase>(
        () => _i56.AddChatRoomUseCase(gh<_i23.ChatRepository>()));
    gh.factory<_i57.GetChatUseCase>(
        () => _i57.GetChatUseCase(gh<_i23.ChatRepository>()));
    gh.factory<_i58.GetUserMembersUseCase>(
        () => _i58.GetUserMembersUseCase(gh<_i23.ChatRepository>()));
    gh.factory<_i59.GetUsersUseCase>(
        () => _i59.GetUsersUseCase(gh<_i23.ChatRepository>()));
    gh.factory<_i60.UpdateMessageUseCase>(
        () => _i60.UpdateMessageUseCase(gh<_i23.ChatRepository>()));
    gh.factory<_i61.UpdateRoomUseCase>(
        () => _i61.UpdateRoomUseCase(gh<_i23.ChatRepository>()));
    gh.lazySingleton<_i62.IdRequestRepository>(
        () => _i63.IdRequestTypeRepoImpl(gh<_i22.IdRequestTypeDataSource>()));
    gh.lazySingleton<_i64.HomeWorkNotesRepository>(() =>
        _i65.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i41.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i66.DigitalLibraryUseCase>(
        () => _i66.DigitalLibraryUseCase(gh<_i28.AcademicRepository>()));
    gh.lazySingleton<_i67.GetAcademicTypesUseCase>(
        () => _i67.GetAcademicTypesUseCase(gh<_i28.AcademicRepository>()));
    gh.lazySingleton<_i68.DashBoardRepository>(() => _i69.DashBoardRepoImpl(
          gh<_i33.DashBoardRemoteDataSource>(),
          gh<_i39.ConnectionChecker>(),
          gh<_i44.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i70.AuthRepository>(() => _i71.AuthRepositoryImpl(
          gh<_i39.ConnectionChecker>(),
          authRemoteDataSource: gh<_i42.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i38.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i72.NoticeRepository>(() => _i73.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i43.NoticeRemoteDataSource>()));
    gh.factory<_i74.GetAllNoticeUseCase>(() => _i74.GetAllNoticeUseCase(
        noticeRepository: gh<_i72.NoticeRepository>()));
    gh.lazySingleton<_i75.GetIdRequestTypeUseCase>(
        () => _i75.GetIdRequestTypeUseCase(gh<_i62.IdRequestRepository>()));
    gh.factory<_i76.FetchWordThoughtUseCase>(
        () => _i76.FetchWordThoughtUseCase(gh<_i68.DashBoardRepository>()));
    gh.factory<_i77.GetRoleMenuUsecase>(
        () => _i77.GetRoleMenuUsecase(gh<_i68.DashBoardRepository>()));
    gh.lazySingleton<_i78.HomeWorkReportsUseCase>(() =>
        _i78.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i64.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i79.GetHomeWorkDetails>(() => _i79.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i64.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i80.NotesReportsUseCase>(() => _i80.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i64.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i81.GetNoteReportDetails>(() => _i81.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i64.HomeWorkNotesRepository>()));
    gh.factory<_i82.GetNoticeBoardPopUp>(
        () => _i82.GetNoticeBoardPopUp(gh<_i72.NoticeRepository>()));
    gh.singleton<_i83.SignOutUseCase>(
        () => _i83.SignOutUseCase(gh<_i70.AuthRepository>()));
    gh.lazySingleton<_i84.GetUserInfoUseCase>(
        () => _i84.GetUserInfoUseCase(gh<_i70.AuthRepository>()));
    gh.lazySingleton<_i85.LoginUseCase>(
        () => _i85.LoginUseCase(gh<_i70.AuthRepository>()));
    gh.lazySingleton<_i86.SaveUserInfoUseCase>(
        () => _i86.SaveUserInfoUseCase(gh<_i70.AuthRepository>()));
    gh.factory<_i87.NoticeBloc>(() => _i87.NoticeBloc(
          gh<_i82.GetNoticeBoardPopUp>(),
          gh<_i74.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i88.AcademicBloc>(() => _i88.AcademicBloc(
          gh<_i35.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i53.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i84.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i34.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i48.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i47.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i89.DrawerBloc>(() => _i89.DrawerBloc(
          gh<_i49.GetNewsBoardUseCase>(),
          gh<_i84.GetUserInfoUseCase>(),
          gh<_i77.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i90.HomeWorkNotesBloc>(() => _i90.HomeWorkNotesBloc(
          gh<_i78.HomeWorkReportsUseCase>(),
          gh<_i84.GetUserInfoUseCase>(),
          gh<_i80.NotesReportsUseCase>(),
          gh<_i81.GetNoteReportDetails>(),
          gh<_i79.GetHomeWorkDetails>(),
        ));
    gh.factory<_i91.DashboardBloc>(() => _i91.DashboardBloc(
          gh<_i76.FetchWordThoughtUseCase>(),
          gh<_i84.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
