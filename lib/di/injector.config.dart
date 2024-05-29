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
    as _i36;

import '../core/api_provider.dart' as _i11;
import '../core/connection_checker.dart' as _i35;
import '../core/firebase_database.dart' as _i7;
import '../core/hive_service.dart' as _i8;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i34;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i40;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i15;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i38;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i9;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i29;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i23;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i37;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i39;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i18;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i14;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i10;
import '../mash/data/repositories/academic_repository_impl.dart' as _i25;
import '../mash/data/repositories/auth_repository_impl.dart' as _i61;
import '../mash/data/repositories/chat_repository_impl.dart' as _i20;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i59;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i33;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i57;
import '../mash/data/repositories/notice_repository_impl.dart' as _i63;
import '../mash/data/repositories/profile_repository_impl.dart' as _i22;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i17;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i13;
import '../mash/domain/repositories/academic_repository.dart' as _i24;
import '../mash/domain/repositories/auth_repository.dart' as _i60;
import '../mash/domain/repositories/chat_repository.dart' as _i19;
import '../mash/domain/repositories/dash_board_repository.dart' as _i58;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i32;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i56;
import '../mash/domain/repositories/notice_repository.dart' as _i62;
import '../mash/domain/repositories/profile_repository.dart' as _i21;
import '../mash/domain/repositories/teacher_repository.dart' as _i16;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i12;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i30;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i47;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i31;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i42;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i43;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i73;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i74;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i75;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i72;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i50;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i48;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i51;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i52;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i53;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i49;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i54;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i55;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i66;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i64;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i67;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i44;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i68;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i70;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i69;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i71;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i65;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i26;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i27;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i28;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i45;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i46;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i41;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i78;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i80;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart' as _i79;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i77;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart' as _i76;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i6;

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
    gh.singleton<_i7.FirebaseDatabaseMethods>(
        () => _i7.FirebaseDatabaseMethods());
    gh.lazySingleton<_i8.HiveService>(() => _i8.HiveService());
    gh.lazySingleton<_i9.ChatDataSource>(() => _i9.ChatDataSourceImpl(
          gh<_i7.FirebaseDatabaseMethods>(),
          gh<_i8.HiveService>(),
        ));
    gh.lazySingleton<_i10.VehicleTrackerDataSource>(
        () => _i10.VehicleTrackerImpl(gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i12.VehicleTrackerRepository>(
        () => _i13.vehicleTrackerRepoImpl(gh<_i10.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i14.TeacherDataSource>(
        () => _i14.TeacherDataSourceImpl(gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i15.AcademicRemoteDataSource>(
        () => _i15.AcademicRemoteDataSourceImpl(gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i16.TeacherRepository>(
        () => _i17.TeacherRepoImpl(gh<_i14.TeacherDataSource>()));
    gh.lazySingleton<_i18.ProfileDataSource>(
        () => _i18.ProfileDataSourceImpl(gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i19.ChatRepository>(
        () => _i20.ChatRepositoryImpl(gh<_i9.ChatDataSource>()));
    gh.lazySingleton<_i21.ProfileRepository>(
        () => _i22.ProfileRepositoryImpl(gh<_i18.ProfileDataSource>()));
    gh.lazySingleton<_i23.DrawerMenuItemsRemoteDataSource>(() =>
        _i23.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i24.AcademicRepository>(
        () => _i25.AcademicRepositoryImpl(gh<_i15.AcademicRemoteDataSource>()));
    gh.factory<_i26.GetSiblingsUseCase>(
        () => _i26.GetSiblingsUseCase(gh<_i21.ProfileRepository>()));
    gh.singleton<_i27.GetUserDetailsUseCase>(
        () => _i27.GetUserDetailsUseCase(gh<_i21.ProfileRepository>()));
    gh.singleton<_i28.UpdateProfileUseCase>(
        () => _i28.UpdateProfileUseCase(gh<_i21.ProfileRepository>()));
    gh.lazySingleton<_i29.DashBoardRemoteDataSource>(() =>
        _i29.DashBoardRemoteDataSourceImpl(
            apiProvider: gh<_i11.ApiProvider>()));
    gh.factory<_i30.GetAcademicSubjectUseCase>(() =>
        _i30.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i24.AcademicRepository>()));
    gh.factory<_i31.GetDivisionDetailsUseCase>(() =>
        _i31.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i24.AcademicRepository>()));
    gh.lazySingleton<_i32.DrawerMenuItemsRepository>(() =>
        _i33.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i23.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i34.AuthLocalDataSource>(
        () => _i34.AuthLocalDataSourceImpl(hiveService: gh<_i8.HiveService>()));
    gh.lazySingleton<_i35.ConnectionChecker>(
        () => _i35.ConnectionCheckerImpl(gh<_i36.InternetConnectionChecker>()));
    gh.lazySingleton<_i37.HomeWorkNotesRemoteDataSource>(() =>
        _i37.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i38.AuthRemoteDataSource>(
        () => _i38.AuthRemoteDataSourceImpl(
              gh<_i11.ApiProvider>(),
              gh<_i7.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i39.NoticeRemoteDataSource>(() =>
        _i39.NoticeRemoteDataSourceImpl(apiProvider: gh<_i11.ApiProvider>()));
    gh.lazySingleton<_i40.DashBoardLocalDataSource>(() =>
        _i40.DashBoardLocalDataSourceImpl(hiveService: gh<_i8.HiveService>()));
    gh.lazySingleton<_i41.GetVehicleTrackerStopsUseCase>(() =>
        _i41.GetVehicleTrackerStopsUseCase(
            gh<_i12.VehicleTrackerRepository>()));
    gh.lazySingleton<_i42.GetSyllabusTermsUseCase>(() =>
        _i42.GetSyllabusTermsUseCase(
            academicRepository: gh<_i24.AcademicRepository>()));
    gh.lazySingleton<_i43.GetSyllabusUseCase>(() => _i43.GetSyllabusUseCase(
        academicRepository: gh<_i24.AcademicRepository>()));
    gh.lazySingleton<_i44.GetNewsBoardUseCase>(() => _i44.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i32.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i45.GetTeacherRatingUseCase>(
        () => _i45.GetTeacherRatingUseCase(gh<_i16.TeacherRepository>()));
    gh.lazySingleton<_i46.GetTeacherRatingQuestionsUseCase>(() =>
        _i46.GetTeacherRatingQuestionsUseCase(gh<_i16.TeacherRepository>()));
    gh.factory<_i47.GetClassInforUseCase>(
        () => _i47.GetClassInforUseCase(gh<_i24.AcademicRepository>()));
    gh.singleton<_i48.GetChatRoomsUseCase>(
        () => _i48.GetChatRoomsUseCase(gh<_i19.ChatRepository>()));
    gh.singleton<_i49.SendMessageUserCase>(
        () => _i49.SendMessageUserCase(gh<_i19.ChatRepository>()));
    gh.factory<_i50.AddChatRoomUseCase>(
        () => _i50.AddChatRoomUseCase(gh<_i19.ChatRepository>()));
    gh.factory<_i51.GetChatUseCase>(
        () => _i51.GetChatUseCase(gh<_i19.ChatRepository>()));
    gh.factory<_i52.GetUserMembersUseCase>(
        () => _i52.GetUserMembersUseCase(gh<_i19.ChatRepository>()));
    gh.factory<_i53.GetUsersUseCase>(
        () => _i53.GetUsersUseCase(gh<_i19.ChatRepository>()));
    gh.factory<_i54.UpdateMessageUseCase>(
        () => _i54.UpdateMessageUseCase(gh<_i19.ChatRepository>()));
    gh.factory<_i55.UpdateRoomUseCase>(
        () => _i55.UpdateRoomUseCase(gh<_i19.ChatRepository>()));
    gh.lazySingleton<_i56.HomeWorkNotesRepository>(() =>
        _i57.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i37.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i58.DashBoardRepository>(() => _i59.DashBoardRepoImpl(
          gh<_i29.DashBoardRemoteDataSource>(),
          gh<_i35.ConnectionChecker>(),
          gh<_i40.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i60.AuthRepository>(() => _i61.AuthRepositoryImpl(
          gh<_i35.ConnectionChecker>(),
          authRemoteDataSource: gh<_i38.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i34.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i62.NoticeRepository>(() => _i63.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i39.NoticeRemoteDataSource>()));
    gh.singleton<_i64.DigitalLibraryUseCase>(
        () => _i64.DigitalLibraryUseCase(gh<_i58.DashBoardRepository>()));
    gh.factory<_i65.GetAllNoticeUseCase>(() => _i65.GetAllNoticeUseCase(
        noticeRepository: gh<_i62.NoticeRepository>()));
    gh.factory<_i66.FetchWordThoughtUseCase>(
        () => _i66.FetchWordThoughtUseCase(gh<_i58.DashBoardRepository>()));
    gh.factory<_i67.GetRoleMenuUsecase>(
        () => _i67.GetRoleMenuUsecase(gh<_i58.DashBoardRepository>()));
    gh.lazySingleton<_i68.HomeWorkReportsUseCase>(() =>
        _i68.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i56.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i69.NotesReportsUseCase>(() => _i69.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i56.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i70.GetNoteReportDetails>(() => _i70.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i56.HomeWorkNotesRepository>()));
    gh.factory<_i71.GetNoticeBoardPopUp>(
        () => _i71.GetNoticeBoardPopUp(gh<_i62.NoticeRepository>()));
    gh.singleton<_i72.SignOutUseCase>(
        () => _i72.SignOutUseCase(gh<_i60.AuthRepository>()));
    gh.lazySingleton<_i73.GetUserInfoUseCase>(
        () => _i73.GetUserInfoUseCase(gh<_i60.AuthRepository>()));
    gh.lazySingleton<_i74.LoginUseCase>(
        () => _i74.LoginUseCase(gh<_i60.AuthRepository>()));
    gh.lazySingleton<_i75.SaveUserInfoUseCase>(
        () => _i75.SaveUserInfoUseCase(gh<_i60.AuthRepository>()));
    gh.factory<_i76.NoticeBloc>(() => _i76.NoticeBloc(
          gh<_i71.GetNoticeBoardPopUp>(),
          gh<_i65.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i77.HomeWorkNotesBloc>(() => _i77.HomeWorkNotesBloc(
          gh<_i68.HomeWorkReportsUseCase>(),
          gh<_i73.GetUserInfoUseCase>(),
          gh<_i69.NotesReportsUseCase>(),
          gh<_i70.GetNoteReportDetails>(),
        ));
    gh.factory<_i78.AcademicBloc>(() => _i78.AcademicBloc(
          gh<_i31.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i47.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i73.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i30.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i43.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i42.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i79.DrawerBloc>(() => _i79.DrawerBloc(
          gh<_i44.GetNewsBoardUseCase>(),
          gh<_i73.GetUserInfoUseCase>(),
          gh<_i67.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i80.DashboardBloc>(() => _i80.DashboardBloc(
          gh<_i66.FetchWordThoughtUseCase>(),
          gh<_i73.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
