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
    as _i54;

import '../core/api_provider.dart' as _i10;
import '../core/connection_checker.dart' as _i53;
import '../core/firebase_database.dart' as _i11;
import '../core/hive_service.dart' as _i12;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i52;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i60;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i22;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i58;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i15;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i47;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i37;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i34;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i57;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i28;
import '../mash/data/remote/data_sources/leave_data_source.dart' as _i26;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i59;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i23;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i31;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i27;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i20;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i16;
import '../mash/data/repositories/academic_repository_impl.dart' as _i39;
import '../mash/data/repositories/auth_repository_impl.dart' as _i98;
import '../mash/data/repositories/chat_repository_impl.dart' as _i33;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i96;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i51;
import '../mash/data/repositories/home_repository_impl.dart' as _i56;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i90;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i76;
import '../mash/data/repositories/leave_repository_impl.dart' as _i68;
import '../mash/data/repositories/library_repo_impl.dart' as _i41;
import '../mash/data/repositories/notice_repository_impl.dart' as _i100;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i30;
import '../mash/data/repositories/payment_repo_impl.dart' as _i46;
import '../mash/data/repositories/profile_repository_impl.dart' as _i36;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i25;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i18;
import '../mash/domain/repositories/academic_repository.dart' as _i38;
import '../mash/domain/repositories/auth_repository.dart' as _i97;
import '../mash/domain/repositories/chat_repository.dart' as _i32;
import '../mash/domain/repositories/dash_board_repository.dart' as _i95;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i50;
import '../mash/domain/repositories/home_repository.dart' as _i55;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i89;
import '../mash/domain/repositories/id_request_repository.dart' as _i75;
import '../mash/domain/repositories/leave_repository.dart' as _i67;
import '../mash/domain/repositories/library_repository.dart' as _i40;
import '../mash/domain/repositories/notice_repository.dart' as _i99;
import '../mash/domain/repositories/payment_repository.dart' as _i45;
import '../mash/domain/repositories/profile_repository.dart' as _i35;
import '../mash/domain/repositories/teacher_repository.dart' as _i24;
import '../mash/domain/repositories/time_table_repository.dart' as _i29;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i17;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i48;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i72;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i49;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i63;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i64;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i113;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i114;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i115;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i112;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i80;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i78;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i81;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i82;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i83;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i79;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i84;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i85;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i105;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i101;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i106;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i66;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i73;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i74;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i108;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i107;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i110;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i109;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i103;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i104;
import '../mash/domain/use_cases/leave/leave_use_case.dart' as _i91;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i92;
import '../mash/domain/use_cases/library/post_physical_library_request.dart'
    as _i93;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i94;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart'
    as _i111;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i102;
import '../mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart'
    as _i77;
import '../mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart'
    as _i65;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i42;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i43;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i44;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i69;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i70;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i71;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i86;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i87;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i88;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i61;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i62;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i119;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i122;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i120;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i117;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i121;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart' as _i9;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i116;
import '../mash/presentation/manager/bloc/payment/payment_bloc.dart' as _i118;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i8;
import '../mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart'
    as _i13;
import '../mash/presentation/manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart'
    as _i14;

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
    gh.factory<_i6.LibraryBloc>(() => _i6.LibraryBloc());
    gh.factory<_i7.ProfileBloc>(() => _i7.ProfileBloc());
    gh.factory<_i8.TeacherBloc>(() => _i8.TeacherBloc());
    gh.factory<_i9.LeaveBloc>(() => _i9.LeaveBloc());
    gh.singleton<_i10.ApiProvider>(() => _i10.ApiProvider());
    gh.singleton<_i11.FirebaseDatabaseMethods>(
        () => _i11.FirebaseDatabaseMethods());
    gh.lazySingleton<_i12.HiveService>(() => _i12.HiveService());
    gh.lazySingleton<_i13.TimeTableBloc>(() => _i13.TimeTableBloc());
    gh.lazySingleton<_i14.VehicleTrackerStopsBloc>(
        () => _i14.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i15.ChatDataSource>(() => _i15.ChatDataSourceImpl(
          gh<_i11.FirebaseDatabaseMethods>(),
          gh<_i12.HiveService>(),
        ));
    gh.lazySingleton<_i16.VehicleTrackerDataSource>(
        () => _i16.VehicleTrackerImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i17.VehicleTrackerRepository>(
        () => _i18.VehicleTrackerRepoImpl(gh<_i16.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i19.TimeTableDataSource>(
        () => _i19.TimeTableDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i20.TeacherDataSource>(
        () => _i20.TeacherDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i21.LibraryDataSource>(
        () => _i21.LibraryDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i22.AcademicRemoteDataSource>(
        () => _i22.AcademicRemoteDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i23.OfflineExamDataSource>(
        () => _i23.OfflineExamTermImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i24.TeacherRepository>(
        () => _i25.TeacherRepoImpl(gh<_i20.TeacherDataSource>()));
    gh.lazySingleton<_i26.LeaveDataSource>(
        () => _i26.LeaveDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i27.ProfileDataSource>(
        () => _i27.ProfileDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i28.IdRequestTypeDataSource>(
        () => _i28.IdRequestTypeImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i29.TimeTableRepository>(() => _i30.TimeTableRepoImpl(
          gh<_i23.OfflineExamDataSource>(),
          gh<_i19.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i31.PaymentRemoteDataSource>(() =>
        _i31.PaymentRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i32.ChatRepository>(
        () => _i33.ChatRepositoryImpl(gh<_i15.ChatDataSource>()));
    gh.lazySingleton<_i34.HomeRemoteDataSource>(() =>
        _i34.HomeRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i35.ProfileRepository>(
        () => _i36.ProfileRepositoryImpl(gh<_i27.ProfileDataSource>()));
    gh.lazySingleton<_i37.DrawerMenuItemsRemoteDataSource>(() =>
        _i37.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i38.AcademicRepository>(
        () => _i39.AcademicRepositoryImpl(gh<_i22.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i40.LibraryRepository>(
        () => _i41.LibraryRepoImpl(gh<_i21.LibraryDataSource>()));
    gh.factory<_i42.GetSiblingsUseCase>(
        () => _i42.GetSiblingsUseCase(gh<_i35.ProfileRepository>()));
    gh.singleton<_i43.GetUserDetailsUseCase>(
        () => _i43.GetUserDetailsUseCase(gh<_i35.ProfileRepository>()));
    gh.singleton<_i44.UpdateProfileUseCase>(
        () => _i44.UpdateProfileUseCase(gh<_i35.ProfileRepository>()));
    gh.lazySingleton<_i45.PaymentRepository>(() => _i46.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i31.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i47.DashBoardRemoteDataSource>(() =>
        _i47.DashBoardRemoteDataSourceImpl(
            apiProvider: gh<_i10.ApiProvider>()));
    gh.factory<_i48.GetAcademicSubjectUseCase>(() =>
        _i48.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i38.AcademicRepository>()));
    gh.factory<_i49.GetDivisionDetailsUseCase>(() =>
        _i49.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i38.AcademicRepository>()));
    gh.lazySingleton<_i50.DrawerMenuItemsRepository>(() =>
        _i51.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i37.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i52.AuthLocalDataSource>(() =>
        _i52.AuthLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i53.ConnectionChecker>(
        () => _i53.ConnectionCheckerImpl(gh<_i54.InternetConnectionChecker>()));
    gh.lazySingleton<_i55.HomeRepository>(() => _i56.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i34.HomeRemoteDataSource>()));
    gh.lazySingleton<_i57.HomeWorkNotesRemoteDataSource>(() =>
        _i57.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i58.AuthRemoteDataSource>(
        () => _i58.AuthRemoteDataSourceImpl(
              gh<_i10.ApiProvider>(),
              gh<_i11.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i59.NoticeRemoteDataSource>(() =>
        _i59.NoticeRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i60.DashBoardLocalDataSource>(() =>
        _i60.DashBoardLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i61.GetVehicleCurrentLocation>(() =>
        _i61.GetVehicleCurrentLocation(gh<_i17.VehicleTrackerRepository>()));
    gh.lazySingleton<_i62.GetVehicleTrackerStopsUseCase>(() =>
        _i62.GetVehicleTrackerStopsUseCase(
            gh<_i17.VehicleTrackerRepository>()));
    gh.lazySingleton<_i63.GetSyllabusTermsUseCase>(() =>
        _i63.GetSyllabusTermsUseCase(
            academicRepository: gh<_i38.AcademicRepository>()));
    gh.lazySingleton<_i64.GetSyllabusUseCase>(() => _i64.GetSyllabusUseCase(
        academicRepository: gh<_i38.AcademicRepository>()));
    gh.lazySingleton<_i65.GetPaymentFinalAmountUsecase>(() =>
        _i65.GetPaymentFinalAmountUsecase(
            paymentRepository: gh<_i45.PaymentRepository>()));
    gh.lazySingleton<_i66.GetNewsBoardUseCase>(() => _i66.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i50.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i67.LeaveRepository>(
        () => _i68.LeaveRepositoryImpl(gh<_i26.LeaveDataSource>()));
    gh.lazySingleton<_i69.GetTeacherRatingUseCase>(
        () => _i69.GetTeacherRatingUseCase(gh<_i24.TeacherRepository>()));
    gh.lazySingleton<_i70.PostTeacherRatingUseCase>(
        () => _i70.PostTeacherRatingUseCase(gh<_i24.TeacherRepository>()));
    gh.lazySingleton<_i71.GetTeacherRatingQuestionsUseCase>(() =>
        _i71.GetTeacherRatingQuestionsUseCase(gh<_i24.TeacherRepository>()));
    gh.factory<_i72.GetClassInforUseCase>(
        () => _i72.GetClassInforUseCase(gh<_i38.AcademicRepository>()));
    gh.lazySingleton<_i73.GetAddOnUsecase>(
        () => _i73.GetAddOnUsecase(homeRepository: gh<_i55.HomeRepository>()));
    gh.lazySingleton<_i74.PostfeedbackUsecase>(() =>
        _i74.PostfeedbackUsecase(homeRepository: gh<_i55.HomeRepository>()));
    gh.lazySingleton<_i75.IdRequestRepository>(
        () => _i76.IdRequestRepoImpl(gh<_i28.IdRequestTypeDataSource>()));
    gh.factory<_i77.GetPaymentDashboardUsecase>(
        () => _i77.GetPaymentDashboardUsecase(gh<_i45.PaymentRepository>()));
    gh.singleton<_i78.GetChatRoomsUseCase>(
        () => _i78.GetChatRoomsUseCase(gh<_i32.ChatRepository>()));
    gh.singleton<_i79.SendMessageUserCase>(
        () => _i79.SendMessageUserCase(gh<_i32.ChatRepository>()));
    gh.factory<_i80.AddChatRoomUseCase>(
        () => _i80.AddChatRoomUseCase(gh<_i32.ChatRepository>()));
    gh.factory<_i81.GetChatUseCase>(
        () => _i81.GetChatUseCase(gh<_i32.ChatRepository>()));
    gh.factory<_i82.GetUserMembersUseCase>(
        () => _i82.GetUserMembersUseCase(gh<_i32.ChatRepository>()));
    gh.factory<_i83.GetUsersUseCase>(
        () => _i83.GetUsersUseCase(gh<_i32.ChatRepository>()));
    gh.factory<_i84.UpdateMessageUseCase>(
        () => _i84.UpdateMessageUseCase(gh<_i32.ChatRepository>()));
    gh.factory<_i85.UpdateRoomUseCase>(
        () => _i85.UpdateRoomUseCase(gh<_i32.ChatRepository>()));
    gh.lazySingleton<_i86.GetDailyTimeTableUseCase>(
        () => _i86.GetDailyTimeTableUseCase(gh<_i29.TimeTableRepository>()));
    gh.lazySingleton<_i87.GetOfflineExamTermsUseCase>(
        () => _i87.GetOfflineExamTermsUseCase(gh<_i29.TimeTableRepository>()));
    gh.lazySingleton<_i88.GetOfflineExamTimeTableUseCase>(() =>
        _i88.GetOfflineExamTimeTableUseCase(gh<_i29.TimeTableRepository>()));
    gh.lazySingleton<_i89.HomeWorkNotesRepository>(() =>
        _i90.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i57.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i91.GetDashboardLeaveUseCase>(
        () => _i91.GetDashboardLeaveUseCase(gh<_i67.LeaveRepository>()));
    gh.lazySingleton<_i92.GetPhysicalLibraryUseCase>(
        () => _i92.GetPhysicalLibraryUseCase(gh<_i40.LibraryRepository>()));
    gh.lazySingleton<_i93.PostPhysicalLibraryUseCase>(
        () => _i93.PostPhysicalLibraryUseCase(gh<_i40.LibraryRepository>()));
    gh.lazySingleton<_i94.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i94.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i40.LibraryRepository>()));
    gh.lazySingleton<_i95.DashBoardRepository>(() => _i96.DashBoardRepoImpl(
          gh<_i47.DashBoardRemoteDataSource>(),
          gh<_i53.ConnectionChecker>(),
          gh<_i60.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i97.AuthRepository>(() => _i98.AuthRepositoryImpl(
          gh<_i53.ConnectionChecker>(),
          authRemoteDataSource: gh<_i58.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i52.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i99.NoticeRepository>(() => _i100.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i59.NoticeRemoteDataSource>()));
    gh.singleton<_i101.DigitalLibraryUseCase>(
        () => _i101.DigitalLibraryUseCase(gh<_i95.DashBoardRepository>()));
    gh.factory<_i102.GetAllNoticeUseCase>(() => _i102.GetAllNoticeUseCase(
        noticeRepository: gh<_i99.NoticeRepository>()));
    gh.lazySingleton<_i103.GetIdRequestTypeUseCase>(
        () => _i103.GetIdRequestTypeUseCase(gh<_i75.IdRequestRepository>()));
    gh.lazySingleton<_i104.PostIdRequestUseCase>(
        () => _i104.PostIdRequestUseCase(gh<_i75.IdRequestRepository>()));
    gh.factory<_i105.FetchWordThoughtUseCase>(
        () => _i105.FetchWordThoughtUseCase(gh<_i95.DashBoardRepository>()));
    gh.factory<_i106.GetRoleMenuUsecase>(
        () => _i106.GetRoleMenuUsecase(gh<_i95.DashBoardRepository>()));
    gh.lazySingleton<_i107.HomeWorkReportsUseCase>(() =>
        _i107.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i89.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i108.GetHomeWorkDetails>(() => _i108.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i89.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i109.NotesReportsUseCase>(() => _i109.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i89.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i110.GetNoteReportDetails>(() =>
        _i110.GetNoteReportDetails(
            homeWorkNotesRepository: gh<_i89.HomeWorkNotesRepository>()));
    gh.factory<_i111.GetNoticeBoardPopUp>(
        () => _i111.GetNoticeBoardPopUp(gh<_i99.NoticeRepository>()));
    gh.singleton<_i112.SignOutUseCase>(
        () => _i112.SignOutUseCase(gh<_i97.AuthRepository>()));
    gh.lazySingleton<_i113.GetUserInfoUseCase>(
        () => _i113.GetUserInfoUseCase(gh<_i97.AuthRepository>()));
    gh.lazySingleton<_i114.LoginUseCase>(
        () => _i114.LoginUseCase(gh<_i97.AuthRepository>()));
    gh.lazySingleton<_i115.SaveUserInfoUseCase>(
        () => _i115.SaveUserInfoUseCase(gh<_i97.AuthRepository>()));
    gh.factory<_i116.NoticeBloc>(() => _i116.NoticeBloc(
          gh<_i111.GetNoticeBoardPopUp>(),
          gh<_i102.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i117.HomeBloc>(() => _i117.HomeBloc(
          gh<_i73.GetAddOnUsecase>(),
          gh<_i113.GetUserInfoUseCase>(),
          gh<_i74.PostfeedbackUsecase>(),
        ));
    gh.factory<_i118.PaymentBloc>(() => _i118.PaymentBloc(
          gh<_i77.GetPaymentDashboardUsecase>(),
          gh<_i113.GetUserInfoUseCase>(),
          gh<_i65.GetPaymentFinalAmountUsecase>(),
        ));
    gh.factory<_i119.AcademicBloc>(() => _i119.AcademicBloc(
          gh<_i49.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i72.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i113.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i48.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i64.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i63.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i120.DrawerBloc>(() => _i120.DrawerBloc(
          gh<_i66.GetNewsBoardUseCase>(),
          gh<_i113.GetUserInfoUseCase>(),
          gh<_i106.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i121.HomeWorkNotesBloc>(() => _i121.HomeWorkNotesBloc(
          gh<_i107.HomeWorkReportsUseCase>(),
          gh<_i113.GetUserInfoUseCase>(),
          gh<_i109.NotesReportsUseCase>(),
          gh<_i110.GetNoteReportDetails>(),
          gh<_i108.GetHomeWorkDetails>(),
        ));
    gh.factory<_i122.DashboardBloc>(() => _i122.DashboardBloc(
          gh<_i105.FetchWordThoughtUseCase>(),
          gh<_i113.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
