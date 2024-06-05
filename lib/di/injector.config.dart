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
    as _i45;

import '../core/api_provider.dart' as _i8;
import '../core/connection_checker.dart' as _i44;
import '../core/firebase_database.dart' as _i9;
import '../core/hive_service.dart' as _i10;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i43;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i53;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i18;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i51;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i13;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i38;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i30;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i27;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i48;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i23;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i52;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i24;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i17;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i14;
import '../mash/data/repositories/academic_repository_impl.dart' as _i32;
import '../mash/data/repositories/auth_repository_impl.dart' as _i83;
import '../mash/data/repositories/chat_repository_impl.dart' as _i26;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i81;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i42;
import '../mash/data/repositories/home_repository_impl.dart' as _i47;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i79;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i66;
import '../mash/data/repositories/notice_repository_impl.dart' as _i85;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i50;
import '../mash/data/repositories/payment_repo_impl.dart' as _i37;
import '../mash/data/repositories/profile_repository_impl.dart' as _i29;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i21;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i16;
import '../mash/domain/repositories/academic_repository.dart' as _i31;
import '../mash/domain/repositories/auth_repository.dart' as _i82;
import '../mash/domain/repositories/chat_repository.dart' as _i25;
import '../mash/domain/repositories/dash_board_repository.dart' as _i80;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i41;
import '../mash/domain/repositories/home_repository.dart' as _i46;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i78;
import '../mash/domain/repositories/id_request_repository.dart' as _i65;
import '../mash/domain/repositories/notice_repository.dart' as _i84;
import '../mash/domain/repositories/payment_repository.dart' as _i36;
import '../mash/domain/repositories/profile_repository.dart' as _i28;
import '../mash/domain/repositories/teacher_repository.dart' as _i20;
import '../mash/domain/repositories/time_table_repository.dart' as _i49;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i15;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i39;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i62;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i40;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i56;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i57;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i98;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i99;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i100;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i97;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i70;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i68;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i71;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i72;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i73;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i69;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i74;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i75;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i90;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i86;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i91;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i58;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i63;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i64;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i93;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i92;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i95;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i94;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i88;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i89;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i96;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i87;
import '../mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_exam_terms_use_case.dart'
    as _i76;
import '../mash/domain/use_cases/oflline_exam_time_table_term_usecase/offline_time_table_use_case.dart'
    as _i77;
import '../mash/domain/use_cases/payment/get_payment_dashboard.dart' as _i67;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i33;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i34;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i35;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i59;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i60;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i61;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i54;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i55;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i104;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/bloc/payment_bloc.dart' as _i101;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i107;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i105;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i103;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i106;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i102;
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
    gh.lazySingleton<_i24.PaymentRemoteDataSource>(() =>
        _i24.PaymentRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i25.ChatRepository>(
        () => _i26.ChatRepositoryImpl(gh<_i13.ChatDataSource>()));
    gh.lazySingleton<_i27.HomeRemoteDataSource>(() =>
        _i27.HomeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
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
    gh.lazySingleton<_i36.PaymentRepository>(() => _i37.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i24.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i38.DashBoardRemoteDataSource>(() =>
        _i38.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.factory<_i39.GetAcademicSubjectUseCase>(() =>
        _i39.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i31.AcademicRepository>()));
    gh.factory<_i40.GetDivisionDetailsUseCase>(() =>
        _i40.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i41.DrawerMenuItemsRepository>(() =>
        _i42.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i30.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i43.AuthLocalDataSource>(() =>
        _i43.AuthLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i44.ConnectionChecker>(
        () => _i44.ConnectionCheckerImpl(gh<_i45.InternetConnectionChecker>()));
    gh.lazySingleton<_i46.HomeRepository>(() => _i47.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i27.HomeRemoteDataSource>()));
    gh.lazySingleton<_i48.HomeWorkNotesRemoteDataSource>(() =>
        _i48.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i49.TimeTableRepository>(
        () => _i50.OfflineExamRepoImpl(gh<_i19.OfflineExamDataSource>()));
    gh.lazySingleton<_i51.AuthRemoteDataSource>(
        () => _i51.AuthRemoteDataSourceImpl(
              gh<_i8.ApiProvider>(),
              gh<_i9.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i52.NoticeRemoteDataSource>(() =>
        _i52.NoticeRemoteDataSourceImpl(apiProvider: gh<_i8.ApiProvider>()));
    gh.lazySingleton<_i53.DashBoardLocalDataSource>(() =>
        _i53.DashBoardLocalDataSourceImpl(hiveService: gh<_i10.HiveService>()));
    gh.lazySingleton<_i54.GetVehicleCurrentLocation>(() =>
        _i54.GetVehicleCurrentLocation(gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i55.GetVehicleTrackerStopsUseCase>(() =>
        _i55.GetVehicleTrackerStopsUseCase(
            gh<_i15.VehicleTrackerRepository>()));
    gh.lazySingleton<_i56.GetSyllabusTermsUseCase>(() =>
        _i56.GetSyllabusTermsUseCase(
            academicRepository: gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i57.GetSyllabusUseCase>(() => _i57.GetSyllabusUseCase(
        academicRepository: gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i58.GetNewsBoardUseCase>(() => _i58.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i41.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i59.GetTeacherRatingUseCase>(
        () => _i59.GetTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i60.PostTeacherRatingUseCase>(
        () => _i60.PostTeacherRatingUseCase(gh<_i20.TeacherRepository>()));
    gh.lazySingleton<_i61.GetTeacherRatingQuestionsUseCase>(() =>
        _i61.GetTeacherRatingQuestionsUseCase(gh<_i20.TeacherRepository>()));
    gh.factory<_i62.GetClassInforUseCase>(
        () => _i62.GetClassInforUseCase(gh<_i31.AcademicRepository>()));
    gh.lazySingleton<_i63.GetAddOnUsecase>(
        () => _i63.GetAddOnUsecase(homeRepository: gh<_i46.HomeRepository>()));
    gh.lazySingleton<_i64.PostfeedbackUsecase>(() =>
        _i64.PostfeedbackUsecase(homeRepository: gh<_i46.HomeRepository>()));
    gh.lazySingleton<_i65.IdRequestRepository>(
        () => _i66.IdRequestRepoImpl(gh<_i23.IdRequestTypeDataSource>()));
    gh.factory<_i67.GetPaymentDashboardUsecase>(
        () => _i67.GetPaymentDashboardUsecase(gh<_i36.PaymentRepository>()));
    gh.singleton<_i68.GetChatRoomsUseCase>(
        () => _i68.GetChatRoomsUseCase(gh<_i25.ChatRepository>()));
    gh.singleton<_i69.SendMessageUserCase>(
        () => _i69.SendMessageUserCase(gh<_i25.ChatRepository>()));
    gh.factory<_i70.AddChatRoomUseCase>(
        () => _i70.AddChatRoomUseCase(gh<_i25.ChatRepository>()));
    gh.factory<_i71.GetChatUseCase>(
        () => _i71.GetChatUseCase(gh<_i25.ChatRepository>()));
    gh.factory<_i72.GetUserMembersUseCase>(
        () => _i72.GetUserMembersUseCase(gh<_i25.ChatRepository>()));
    gh.factory<_i73.GetUsersUseCase>(
        () => _i73.GetUsersUseCase(gh<_i25.ChatRepository>()));
    gh.factory<_i74.UpdateMessageUseCase>(
        () => _i74.UpdateMessageUseCase(gh<_i25.ChatRepository>()));
    gh.factory<_i75.UpdateRoomUseCase>(
        () => _i75.UpdateRoomUseCase(gh<_i25.ChatRepository>()));
    gh.lazySingleton<_i76.GetOfflineExamTermsUseCase>(
        () => _i76.GetOfflineExamTermsUseCase(gh<_i49.TimeTableRepository>()));
    gh.lazySingleton<_i77.GetOfflineExamTimeTableUseCase>(() =>
        _i77.GetOfflineExamTimeTableUseCase(gh<_i49.TimeTableRepository>()));
    gh.lazySingleton<_i78.HomeWorkNotesRepository>(() =>
        _i79.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i48.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i80.DashBoardRepository>(() => _i81.DashBoardRepoImpl(
          gh<_i38.DashBoardRemoteDataSource>(),
          gh<_i44.ConnectionChecker>(),
          gh<_i53.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i82.AuthRepository>(() => _i83.AuthRepositoryImpl(
          gh<_i44.ConnectionChecker>(),
          authRemoteDataSource: gh<_i51.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i43.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i84.NoticeRepository>(() => _i85.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i52.NoticeRemoteDataSource>()));
    gh.singleton<_i86.DigitalLibraryUseCase>(
        () => _i86.DigitalLibraryUseCase(gh<_i80.DashBoardRepository>()));
    gh.factory<_i87.GetAllNoticeUseCase>(() => _i87.GetAllNoticeUseCase(
        noticeRepository: gh<_i84.NoticeRepository>()));
    gh.lazySingleton<_i88.GetIdRequestTypeUseCase>(
        () => _i88.GetIdRequestTypeUseCase(gh<_i65.IdRequestRepository>()));
    gh.lazySingleton<_i89.PostIdRequestUseCase>(
        () => _i89.PostIdRequestUseCase(gh<_i65.IdRequestRepository>()));
    gh.factory<_i90.FetchWordThoughtUseCase>(
        () => _i90.FetchWordThoughtUseCase(gh<_i80.DashBoardRepository>()));
    gh.factory<_i91.GetRoleMenuUsecase>(
        () => _i91.GetRoleMenuUsecase(gh<_i80.DashBoardRepository>()));
    gh.lazySingleton<_i92.HomeWorkReportsUseCase>(() =>
        _i92.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i78.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i93.GetHomeWorkDetails>(() => _i93.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i78.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i94.NotesReportsUseCase>(() => _i94.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i78.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i95.GetNoteReportDetails>(() => _i95.GetNoteReportDetails(
        homeWorkNotesRepository: gh<_i78.HomeWorkNotesRepository>()));
    gh.factory<_i96.GetNoticeBoardPopUp>(
        () => _i96.GetNoticeBoardPopUp(gh<_i84.NoticeRepository>()));
    gh.singleton<_i97.SignOutUseCase>(
        () => _i97.SignOutUseCase(gh<_i82.AuthRepository>()));
    gh.lazySingleton<_i98.GetUserInfoUseCase>(
        () => _i98.GetUserInfoUseCase(gh<_i82.AuthRepository>()));
    gh.lazySingleton<_i99.LoginUseCase>(
        () => _i99.LoginUseCase(gh<_i82.AuthRepository>()));
    gh.lazySingleton<_i100.SaveUserInfoUseCase>(
        () => _i100.SaveUserInfoUseCase(gh<_i82.AuthRepository>()));
    gh.factory<_i101.PaymentBloc>(() => _i101.PaymentBloc(
          gh<_i67.GetPaymentDashboardUsecase>(),
          gh<_i98.GetUserInfoUseCase>(),
        ));
    gh.factory<_i102.NoticeBloc>(() => _i102.NoticeBloc(
          gh<_i96.GetNoticeBoardPopUp>(),
          gh<_i87.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i103.HomeBloc>(() => _i103.HomeBloc(
          gh<_i63.GetAddOnUsecase>(),
          gh<_i98.GetUserInfoUseCase>(),
          gh<_i64.PostfeedbackUsecase>(),
        ));
    gh.factory<_i104.AcademicBloc>(() => _i104.AcademicBloc(
          gh<_i40.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i62.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i98.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i39.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i57.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i56.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i105.DrawerBloc>(() => _i105.DrawerBloc(
          gh<_i58.GetNewsBoardUseCase>(),
          gh<_i98.GetUserInfoUseCase>(),
          gh<_i91.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i106.HomeWorkNotesBloc>(() => _i106.HomeWorkNotesBloc(
          gh<_i92.HomeWorkReportsUseCase>(),
          gh<_i98.GetUserInfoUseCase>(),
          gh<_i94.NotesReportsUseCase>(),
          gh<_i95.GetNoteReportDetails>(),
          gh<_i93.GetHomeWorkDetails>(),
        ));
    gh.factory<_i107.DashboardBloc>(() => _i107.DashboardBloc(
          gh<_i90.FetchWordThoughtUseCase>(),
          gh<_i98.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
