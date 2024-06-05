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
    as _i39;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i38;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i37;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i43;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i17;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i41;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i12;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i32;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i26;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i40;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i21;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i42;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i16;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i13;
import '../mash/data/repositories/academic_repository_impl.dart' as _i28;
import '../mash/data/repositories/auth_repository_impl.dart' as _i68;
import '../mash/data/repositories/chat_repository_impl.dart' as _i23;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i66;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i36;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i64;
import '../mash/data/repositories/id_transfer_type_repo_impl.dart' as _i62;
import '../mash/data/repositories/notice_repository_impl.dart' as _i70;
import '../mash/data/repositories/profile_repository_impl.dart' as _i25;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i19;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i15;
import '../mash/domain/repositories/academic_repository.dart' as _i27;
import '../mash/domain/repositories/auth_repository.dart' as _i67;
import '../mash/domain/repositories/chat_repository.dart' as _i22;
import '../mash/domain/repositories/dash_board_repository.dart' as _i65;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i35;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i63;
import '../mash/domain/repositories/id_request_repository.dart' as _i61;
import '../mash/domain/repositories/notice_repository.dart' as _i69;
import '../mash/domain/repositories/profile_repository.dart' as _i24;
import '../mash/domain/repositories/teacher_repository.dart' as _i18;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i14;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i33;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i52;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i34;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i46;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i47;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i82;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i83;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i84;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i81;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i55;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i53;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i56;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i57;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i58;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i54;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i59;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i60;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i74;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i71;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i75;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i48;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i77;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i76;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i79;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i78;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i73;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i80;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i72;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i29;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i30;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i31;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i49;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i50;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i51;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i44;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i45;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i86;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i89;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i87;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i88;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i85;
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
    gh.lazySingleton<_i16.TeacherDataSource>(
        () => _i16.TeacherDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i17.AcademicRemoteDataSource>(
        () => _i17.AcademicRemoteDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i18.TeacherRepository>(
        () => _i19.TeacherRepoImpl(gh<_i16.TeacherDataSource>()));
    gh.lazySingleton<_i20.ProfileDataSource>(
        () => _i20.ProfileDataSourceImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i21.IdRequestTypeDataSource>(
        () => _i21.IdRequestTypeImpl(gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i22.ChatRepository>(
        () => _i23.ChatRepositoryImpl(gh<_i12.ChatDataSource>()));
    gh.lazySingleton<_i24.ProfileRepository>(
        () => _i25.ProfileRepositoryImpl(gh<_i20.ProfileDataSource>()));
    gh.lazySingleton<_i26.DrawerMenuItemsRemoteDataSource>(() =>
        _i26.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i27.AcademicRepository>(
        () => _i28.AcademicRepositoryImpl(gh<_i17.AcademicRemoteDataSource>()));
    gh.factory<_i29.GetSiblingsUseCase>(
        () => _i29.GetSiblingsUseCase(gh<_i24.ProfileRepository>()));
    gh.singleton<_i30.GetUserDetailsUseCase>(
        () => _i30.GetUserDetailsUseCase(gh<_i24.ProfileRepository>()));
    gh.singleton<_i31.UpdateProfileUseCase>(
        () => _i31.UpdateProfileUseCase(gh<_i24.ProfileRepository>()));
    gh.lazySingleton<_i32.DashBoardRemoteDataSource>(() =>
        _i32.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i33.GetAcademicSubjectUseCase>(() =>
        _i33.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i27.AcademicRepository>()));
    gh.factory<_i34.GetDivisionDetailsUseCase>(() =>
        _i34.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i27.AcademicRepository>()));
    gh.lazySingleton<_i35.DrawerMenuItemsRepository>(() =>
        _i36.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i26.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i37.AuthLocalDataSource>(() =>
        _i37.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i38.ConnectionChecker>(
        () => _i38.ConnectionCheckerImpl(gh<_i39.InternetConnectionChecker>()));
    gh.lazySingleton<_i40.HomeWorkNotesRemoteDataSource>(() =>
        _i40.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i41.AuthRemoteDataSource>(
        () => _i41.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i42.NoticeRemoteDataSource>(() =>
        _i42.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i43.DashBoardLocalDataSource>(() =>
        _i43.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i44.GetVehicleCurrentLocation>(() =>
        _i44.GetVehicleCurrentLocation(gh<_i14.VehicleTrackerRepository>()));
    gh.lazySingleton<_i45.GetVehicleTrackerStopsUseCase>(() =>
        _i45.GetVehicleTrackerStopsUseCase(
            gh<_i14.VehicleTrackerRepository>()));
    gh.lazySingleton<_i46.GetSyllabusTermsUseCase>(() =>
        _i46.GetSyllabusTermsUseCase(
            academicRepository: gh<_i27.AcademicRepository>()));
    gh.lazySingleton<_i47.GetSyllabusUseCase>(() => _i47.GetSyllabusUseCase(
        academicRepository: gh<_i27.AcademicRepository>()));
    gh.lazySingleton<_i48.GetNewsBoardUseCase>(() => _i48.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i35.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i49.GetTeacherRatingUseCase>(
        () => _i49.GetTeacherRatingUseCase(gh<_i18.TeacherRepository>()));
    gh.lazySingleton<_i50.PostTeacherRatingUseCase>(
        () => _i50.PostTeacherRatingUseCase(gh<_i18.TeacherRepository>()));
    gh.lazySingleton<_i51.GetTeacherRatingQuestionsUseCase>(() =>
        _i51.GetTeacherRatingQuestionsUseCase(gh<_i18.TeacherRepository>()));
    gh.factory<_i52.GetClassInforUseCase>(
        () => _i52.GetClassInforUseCase(gh<_i27.AcademicRepository>()));
    gh.singleton<_i53.GetChatRoomsUseCase>(
        () => _i53.GetChatRoomsUseCase(gh<_i22.ChatRepository>()));
    gh.singleton<_i54.SendMessageUserCase>(
        () => _i54.SendMessageUserCase(gh<_i22.ChatRepository>()));
    gh.factory<_i55.AddChatRoomUseCase>(
        () => _i55.AddChatRoomUseCase(gh<_i22.ChatRepository>()));
    gh.factory<_i56.GetChatUseCase>(
        () => _i56.GetChatUseCase(gh<_i22.ChatRepository>()));
    gh.factory<_i57.GetUserMembersUseCase>(
        () => _i57.GetUserMembersUseCase(gh<_i22.ChatRepository>()));
    gh.factory<_i58.GetUsersUseCase>(
        () => _i58.GetUsersUseCase(gh<_i22.ChatRepository>()));
    gh.factory<_i59.UpdateMessageUseCase>(
        () => _i59.UpdateMessageUseCase(gh<_i22.ChatRepository>()));
    gh.factory<_i60.UpdateRoomUseCase>(
        () => _i60.UpdateRoomUseCase(gh<_i22.ChatRepository>()));
    gh.lazySingleton<_i61.IdRequestRepository>(
        () => _i62.IdRequestTypeRepoImpl(gh<_i21.IdRequestTypeDataSource>()));
    gh.lazySingleton<_i63.HomeWorkNotesRepository>(() =>
        _i64.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i40.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i65.DashBoardRepository>(() => _i66.DashBoardRepoImpl(
          gh<_i32.DashBoardRemoteDataSource>(),
          gh<_i38.ConnectionChecker>(),
          gh<_i43.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i67.AuthRepository>(() => _i68.AuthRepositoryImpl(
          gh<_i38.ConnectionChecker>(),
          authRemoteDataSource: gh<_i41.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i37.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i69.NoticeRepository>(() => _i70.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i42.NoticeRemoteDataSource>()));
    gh.singleton<_i71.DigitalLibraryUseCase>(
        () => _i71.DigitalLibraryUseCase(gh<_i65.DashBoardRepository>()));
    gh.factory<_i72.GetAllNoticeUseCase>(() => _i72.GetAllNoticeUseCase(
        noticeRepository: gh<_i69.NoticeRepository>()));
    gh.lazySingleton<_i73.GetIdRequestTypeUseCase>(
        () => _i73.GetIdRequestTypeUseCase(gh<_i61.IdRequestRepository>()));
    gh.factory<_i74.FetchWordThoughtUseCase>(
        () => _i74.FetchWordThoughtUseCase(gh<_i65.DashBoardRepository>()));
    gh.factory<_i75.GetRoleMenuUsecase>(
        () => _i75.GetRoleMenuUsecase(gh<_i65.DashBoardRepository>()));
    gh.lazySingleton<_i76.HomeWorkReportsUseCase>(() =>
        _i76.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i63.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i77.GetHomeWorkDetails>(() => _i77.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i63.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i78.NotesReportsUseCase>(() => _i78.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i63.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i79.GetNoteReportDetails>(() => _i79.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i63.HomeWorkNotesRepository>()));
    gh.factory<_i80.GetNoticeBoardPopUp>(
        () => _i80.GetNoticeBoardPopUp(gh<_i69.NoticeRepository>()));
    gh.singleton<_i81.SignOutUseCase>(
        () => _i81.SignOutUseCase(gh<_i67.AuthRepository>()));
    gh.lazySingleton<_i82.GetUserInfoUseCase>(
        () => _i82.GetUserInfoUseCase(gh<_i67.AuthRepository>()));
    gh.lazySingleton<_i83.LoginUseCase>(
        () => _i83.LoginUseCase(gh<_i67.AuthRepository>()));
    gh.lazySingleton<_i84.SaveUserInfoUseCase>(
        () => _i84.SaveUserInfoUseCase(gh<_i67.AuthRepository>()));
    gh.factory<_i85.NoticeBloc>(() => _i85.NoticeBloc(
          gh<_i80.GetNoticeBoardPopUp>(),
          gh<_i72.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i86.AcademicBloc>(() => _i86.AcademicBloc(
          gh<_i34.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i52.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i82.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i33.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i47.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i46.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i87.DrawerBloc>(() => _i87.DrawerBloc(
          gh<_i48.GetNewsBoardUseCase>(),
          gh<_i82.GetUserInfoUseCase>(),
          gh<_i75.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i88.HomeWorkNotesBloc>(() => _i88.HomeWorkNotesBloc(
          gh<_i76.HomeWorkReportsUseCase>(),
          gh<_i82.GetUserInfoUseCase>(),
          gh<_i78.NotesReportsUseCase>(),
          gh<_i79.GetNoteReportDetails>(),
          gh<_i77.GetHomeWorkDetails>(),
        ));
    gh.factory<_i89.DashboardBloc>(() => _i89.DashboardBloc(
          gh<_i74.FetchWordThoughtUseCase>(),
          gh<_i82.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
