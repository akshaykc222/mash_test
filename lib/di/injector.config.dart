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

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i47;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i46;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i54;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i19;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i52;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i13;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i41;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i33;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i30;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i51;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i24;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i53;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i27;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i23;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i18;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i17;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i14;
import '../mash/data/repositories/academic_repository_impl.dart' as _i35;
import '../mash/data/repositories/auth_repository_impl.dart' as _i85;
import '../mash/data/repositories/chat_repository_impl.dart' as _i29;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i83;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i45;
import '../mash/data/repositories/home_repository_impl.dart' as _i50;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i81;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i67;
import '../mash/data/repositories/notice_repository_impl.dart' as _i87;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i26;
import '../mash/data/repositories/payment_repo_impl.dart' as _i40;
import '../mash/data/repositories/profile_repository_impl.dart' as _i32;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i22;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i16;
import '../mash/domain/repositories/academic_repository.dart' as _i34;
import '../mash/domain/repositories/auth_repository.dart' as _i84;
import '../mash/domain/repositories/chat_repository.dart' as _i28;
import '../mash/domain/repositories/dash_board_repository.dart' as _i82;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i44;
import '../mash/domain/repositories/home_repository.dart' as _i49;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i80;
import '../mash/domain/repositories/id_request_repository.dart' as _i66;
import '../mash/domain/repositories/notice_repository.dart' as _i86;
import '../mash/domain/repositories/payment_repository.dart' as _i39;
import '../mash/domain/repositories/profile_repository.dart' as _i31;
import '../mash/domain/repositories/teacher_repository.dart' as _i21;
import '../mash/domain/repositories/time_table_repository.dart' as _i25;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i15;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i42;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i63;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i43;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i57;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i58;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i100;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i101;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i102;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i99;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i71;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i69;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i72;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i73;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i74;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i70;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i75;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i76;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i92;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i88;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i93;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i59;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i64;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i65;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i95;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i94;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i97;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i96;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i90;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i91;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i98;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i89;
import '../mash/domain/use_cases/payment/get_payment_dashboard.dart' as _i68;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i36;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i37;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i38;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i60;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i61;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i62;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i77;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i78;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i79;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i55;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i56;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i106;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i109;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i107;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i105;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i108;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i104;
import '../mash/presentation/manager/bloc/payment/payment_bloc.dart' as _i103;
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
    gh.lazySingleton<_i27.PaymentRemoteDataSource>(() =>
        _i27.PaymentRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i28.ChatRepository>(
        () => _i29.ChatRepositoryImpl(gh<_i13.ChatDataSource>()));
    gh.lazySingleton<_i30.HomeRemoteDataSource>(() =>
        _i30.HomeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i31.ProfileRepository>(
        () => _i32.ProfileRepositoryImpl(gh<_i23.ProfileDataSource>()));
    gh.lazySingleton<_i33.DrawerMenuItemsRemoteDataSource>(() =>
        _i33.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i34.AcademicRepository>(
        () => _i35.AcademicRepositoryImpl(gh<_i19.AcademicRemoteDataSource>()));
    gh.factory<_i36.GetSiblingsUseCase>(
        () => _i36.GetSiblingsUseCase(gh<_i31.ProfileRepository>()));
    gh.singleton<_i37.GetUserDetailsUseCase>(
        () => _i37.GetUserDetailsUseCase(gh<_i31.ProfileRepository>()));
    gh.singleton<_i38.UpdateProfileUseCase>(
        () => _i38.UpdateProfileUseCase(gh<_i31.ProfileRepository>()));
    gh.lazySingleton<_i39.PaymentRepository>(() => _i40.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i27.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i41.DashBoardRemoteDataSource>(() =>
        _i41.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
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
        _i46.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i47.ConnectionChecker>(
        () => _i47.ConnectionCheckerImpl(gh<_i48.InternetConnectionChecker>()));
    gh.lazySingleton<_i49.HomeRepository>(() => _i50.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i30.HomeRemoteDataSource>()));
    gh.lazySingleton<_i51.HomeWorkNotesRemoteDataSource>(() =>
        _i51.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i52.AuthRemoteDataSource>(
        () => _i52.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i53.NoticeRemoteDataSource>(() =>
        _i53.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i54.DashBoardLocalDataSource>(() =>
        _i54.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i55.GetVehicleCurrentLocation>(() =>
        _i55.GetVehicleCurrentLocation(gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i56.GetVehicleTrackerStopsUseCase>(() =>
        _i56.GetVehicleTrackerStopsUseCase(
            gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i57.GetSyllabusTermsUseCase>(() =>
        _i57.GetSyllabusTermsUseCase(
            academicRepository: gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i58.GetSyllabusUseCase>(() => _i58.GetSyllabusUseCase(
        academicRepository: gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i59.GetNewsBoardUseCase>(() => _i59.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i44.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i60.GetTeacherRatingUseCase>(
        () => _i60.GetTeacherRatingUseCase(gh<_i21.TeacherRepository>()));
    gh.lazySingleton<_i61.PostTeacherRatingUseCase>(
        () => _i61.PostTeacherRatingUseCase(gh<_i21.TeacherRepository>()));
    gh.lazySingleton<_i62.GetTeacherRatingQuestionsUseCase>(() =>
        _i62.GetTeacherRatingQuestionsUseCase(gh<_i21.TeacherRepository>()));
    gh.factory<_i63.GetClassInforUseCase>(
        () => _i63.GetClassInforUseCase(gh<_i34.AcademicRepository>()));
    gh.lazySingleton<_i64.GetAddOnUsecase>(
        () => _i64.GetAddOnUsecase(homeRepository: gh<_i49.HomeRepository>()));
    gh.lazySingleton<_i65.PostfeedbackUsecase>(() =>
        _i65.PostfeedbackUsecase(homeRepository: gh<_i49.HomeRepository>()));
    gh.lazySingleton<_i66.IdRequestRepository>(
        () => _i67.IdRequestRepoImpl(gh<_i24.IdRequestTypeDataSource>()));
    gh.factory<_i68.GetPaymentDashboardUsecase>(
        () => _i68.GetPaymentDashboardUsecase(gh<_i39.PaymentRepository>()));
    gh.singleton<_i69.GetChatRoomsUseCase>(
        () => _i69.GetChatRoomsUseCase(gh<_i28.ChatRepository>()));
    gh.singleton<_i70.SendMessageUserCase>(
        () => _i70.SendMessageUserCase(gh<_i28.ChatRepository>()));
    gh.factory<_i71.AddChatRoomUseCase>(
        () => _i71.AddChatRoomUseCase(gh<_i28.ChatRepository>()));
    gh.factory<_i72.GetChatUseCase>(
        () => _i72.GetChatUseCase(gh<_i28.ChatRepository>()));
    gh.factory<_i73.GetUserMembersUseCase>(
        () => _i73.GetUserMembersUseCase(gh<_i28.ChatRepository>()));
    gh.factory<_i74.GetUsersUseCase>(
        () => _i74.GetUsersUseCase(gh<_i28.ChatRepository>()));
    gh.factory<_i75.UpdateMessageUseCase>(
        () => _i75.UpdateMessageUseCase(gh<_i28.ChatRepository>()));
    gh.factory<_i76.UpdateRoomUseCase>(
        () => _i76.UpdateRoomUseCase(gh<_i28.ChatRepository>()));
    gh.lazySingleton<_i77.GetDailyTimeTableUseCase>(
        () => _i77.GetDailyTimeTableUseCase(gh<_i25.TimeTableRepository>()));
    gh.lazySingleton<_i78.GetOfflineExamTermsUseCase>(
        () => _i78.GetOfflineExamTermsUseCase(gh<_i25.TimeTableRepository>()));
    gh.lazySingleton<_i79.GetOfflineExamTimeTableUseCase>(() =>
        _i79.GetOfflineExamTimeTableUseCase(gh<_i25.TimeTableRepository>()));
    gh.lazySingleton<_i80.HomeWorkNotesRepository>(() =>
        _i81.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i51.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i82.DashBoardRepository>(() => _i83.DashBoardRepoImpl(
          gh<_i41.DashBoardRemoteDataSource>(),
          gh<_i47.ConnectionChecker>(),
          gh<_i54.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i84.AuthRepository>(() => _i85.AuthRepositoryImpl(
          gh<_i47.ConnectionChecker>(),
          authRemoteDataSource: gh<_i52.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i46.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i86.NoticeRepository>(() => _i87.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i53.NoticeRemoteDataSource>()));
    gh.singleton<_i88.DigitalLibraryUseCase>(
        () => _i88.DigitalLibraryUseCase(gh<_i82.DashBoardRepository>()));
    gh.factory<_i89.GetAllNoticeUseCase>(() => _i89.GetAllNoticeUseCase(
        noticeRepository: gh<_i86.NoticeRepository>()));
    gh.lazySingleton<_i90.GetIdRequestTypeUseCase>(
        () => _i90.GetIdRequestTypeUseCase(gh<_i66.IdRequestRepository>()));
    gh.lazySingleton<_i91.PostIdRequestUseCase>(
        () => _i91.PostIdRequestUseCase(gh<_i66.IdRequestRepository>()));
    gh.factory<_i92.FetchWordThoughtUseCase>(
        () => _i92.FetchWordThoughtUseCase(gh<_i82.DashBoardRepository>()));
    gh.factory<_i93.GetRoleMenuUsecase>(
        () => _i93.GetRoleMenuUsecase(gh<_i82.DashBoardRepository>()));
    gh.lazySingleton<_i94.HomeWorkReportsUseCase>(() =>
        _i94.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i80.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i95.GetHomeWorkDetails>(() => _i95.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i80.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i96.NotesReportsUseCase>(() => _i96.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i80.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i97.GetNoteReportDetails>(() => _i97.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i80.HomeWorkNotesRepository>()));
    gh.factory<_i98.GetNoticeBoardPopUp>(
        () => _i98.GetNoticeBoardPopUp(gh<_i86.NoticeRepository>()));
    gh.singleton<_i99.SignOutUseCase>(
        () => _i99.SignOutUseCase(gh<_i84.AuthRepository>()));
    gh.lazySingleton<_i100.GetUserInfoUseCase>(
        () => _i100.GetUserInfoUseCase(gh<_i84.AuthRepository>()));
    gh.lazySingleton<_i101.LoginUseCase>(
        () => _i101.LoginUseCase(gh<_i84.AuthRepository>()));
    gh.lazySingleton<_i102.SaveUserInfoUseCase>(
        () => _i102.SaveUserInfoUseCase(gh<_i84.AuthRepository>()));
    gh.factory<_i103.PaymentBloc>(() => _i103.PaymentBloc(
          gh<_i68.GetPaymentDashboardUsecase>(),
          gh<_i100.GetUserInfoUseCase>(),
        ));
    gh.factory<_i104.NoticeBloc>(() => _i104.NoticeBloc(
          gh<_i98.GetNoticeBoardPopUp>(),
          gh<_i89.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i105.HomeBloc>(() => _i105.HomeBloc(
          gh<_i64.GetAddOnUsecase>(),
          gh<_i100.GetUserInfoUseCase>(),
          gh<_i65.PostfeedbackUsecase>(),
        ));
    gh.factory<_i106.AcademicBloc>(() => _i106.AcademicBloc(
          gh<_i43.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i63.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i100.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i42.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i58.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i57.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i107.DrawerBloc>(() => _i107.DrawerBloc(
          gh<_i59.GetNewsBoardUseCase>(),
          gh<_i100.GetUserInfoUseCase>(),
          gh<_i93.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i108.HomeWorkNotesBloc>(() => _i108.HomeWorkNotesBloc(
          gh<_i94.HomeWorkReportsUseCase>(),
          gh<_i100.GetUserInfoUseCase>(),
          gh<_i96.NotesReportsUseCase>(),
          gh<_i97.GetNoteReportDetails>(),
          gh<_i95.GetHomeWorkDetails>(),
        ));
    gh.factory<_i109.DashboardBloc>(() => _i109.DashboardBloc(
          gh<_i92.FetchWordThoughtUseCase>(),
          gh<_i100.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
