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
    as _i55;

import '../core/api_provider.dart' as _i10;
import '../core/connection_checker.dart' as _i54;
import '../core/firebase_database.dart' as _i11;
import '../core/hive_service.dart' as _i12;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i53;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i61;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i23;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i59;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i16;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i48;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i38;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i35;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i58;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i29;
import '../mash/data/remote/data_sources/leave_data_source.dart' as _i27;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i22;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i60;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i24;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i32;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i28;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i21;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i17;
import '../mash/data/repositories/academic_repository_impl.dart' as _i40;
import '../mash/data/repositories/auth_repository_impl.dart' as _i106;
import '../mash/data/repositories/chat_repository_impl.dart' as _i34;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i104;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i52;
import '../mash/data/repositories/home_repository_impl.dart' as _i57;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i96;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i78;
import '../mash/data/repositories/leave_repository_impl.dart' as _i70;
import '../mash/data/repositories/library_repo_impl.dart' as _i42;
import '../mash/data/repositories/notice_repository_impl.dart' as _i108;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i31;
import '../mash/data/repositories/payment_repo_impl.dart' as _i47;
import '../mash/data/repositories/profile_repository_impl.dart' as _i37;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i26;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i19;
import '../mash/domain/repositories/academic_repository.dart' as _i39;
import '../mash/domain/repositories/auth_repository.dart' as _i105;
import '../mash/domain/repositories/chat_repository.dart' as _i33;
import '../mash/domain/repositories/dash_board_repository.dart' as _i103;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i51;
import '../mash/domain/repositories/home_repository.dart' as _i56;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i95;
import '../mash/domain/repositories/id_request_repository.dart' as _i77;
import '../mash/domain/repositories/leave_repository.dart' as _i69;
import '../mash/domain/repositories/library_repository.dart' as _i41;
import '../mash/domain/repositories/notice_repository.dart' as _i107;
import '../mash/domain/repositories/payment_repository.dart' as _i46;
import '../mash/domain/repositories/profile_repository.dart' as _i36;
import '../mash/domain/repositories/teacher_repository.dart' as _i25;
import '../mash/domain/repositories/time_table_repository.dart' as _i30;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i18;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i49;
import '../mash/domain/use_cases/academic/get_academic_type_use_case.dart'
    as _i97;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i74;
import '../mash/domain/use_cases/academic/get_digital_library_use_case.dart'
    as _i98;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i50;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i64;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i65;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i122;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i123;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i124;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i121;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i86;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i84;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i87;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i88;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i89;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i85;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i90;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i91;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i112;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i113;
import '../mash/domain/use_cases/dashboard/get_scoreboard_details_usecase.dart'
    as _i114;
import '../mash/domain/use_cases/dashboard/get_term_details_usecase.dart'
    as _i115;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i68;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i75;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i76;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i117;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i116;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i119;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i118;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i110;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i111;
import '../mash/domain/use_cases/leave/leave_use_case.dart' as _i99;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i100;
import '../mash/domain/use_cases/library/post_physical_library_request.dart'
    as _i101;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i102;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart'
    as _i120;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i109;
import '../mash/domain/use_cases/payment/get_payment_complete_response_usecase.dart'
    as _i79;
import '../mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart'
    as _i80;
import '../mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart'
    as _i66;
import '../mash/domain/use_cases/payment/get_payment_order_id_usecase.dart'
    as _i67;
import '../mash/domain/use_cases/payment/get_payment_token_usecase.dart'
    as _i81;
import '../mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart'
    as _i82;
import '../mash/domain/use_cases/payment/save_payment_reponse_usecase.dart'
    as _i83;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i43;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i44;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i45;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i71;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i72;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i73;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i92;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i93;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i94;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i62;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i63;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i129;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i126;
import '../mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart'
    as _i13;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i130;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i128;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i131;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart' as _i6;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i127;
import '../mash/presentation/manager/bloc/payment/payment_bloc.dart' as _i125;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i8;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i9;
import '../mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart'
    as _i14;
import '../mash/presentation/manager/bloc/vehicle_tracker_bloc/veihcle_tracker_stops_bloc.dart'
    as _i15;

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
    gh.factory<_i6.LeaveBloc>(() => _i6.LeaveBloc());
    gh.factory<_i7.LibraryBloc>(() => _i7.LibraryBloc());
    gh.factory<_i8.ProfileBloc>(() => _i8.ProfileBloc());
    gh.factory<_i9.TeacherBloc>(() => _i9.TeacherBloc());
    gh.singleton<_i10.ApiProvider>(() => _i10.ApiProvider());
    gh.singleton<_i11.FirebaseDatabaseMethods>(
        () => _i11.FirebaseDatabaseMethods());
    gh.lazySingleton<_i12.HiveService>(() => _i12.HiveService());
    gh.lazySingleton<_i13.DigitalLibraryBloc>(() => _i13.DigitalLibraryBloc());
    gh.lazySingleton<_i14.TimeTableBloc>(() => _i14.TimeTableBloc());
    gh.lazySingleton<_i15.VehicleTrackerStopsBloc>(
        () => _i15.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i16.ChatDataSource>(() => _i16.ChatDataSourceImpl(
          gh<_i11.FirebaseDatabaseMethods>(),
          gh<_i12.HiveService>(),
        ));
    gh.lazySingleton<_i17.VehicleTrackerDataSource>(
        () => _i17.VehicleTrackerImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i18.VehicleTrackerRepository>(
        () => _i19.VehicleTrackerRepoImpl(gh<_i17.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i20.TimeTableDataSource>(
        () => _i20.TimeTableDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i21.TeacherDataSource>(
        () => _i21.TeacherDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i22.LibraryDataSource>(
        () => _i22.LibraryDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i23.AcademicRemoteDataSource>(
        () => _i23.AcademicRemoteDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i24.OfflineExamDataSource>(
        () => _i24.OfflineExamTermImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i25.TeacherRepository>(
        () => _i26.TeacherRepoImpl(gh<_i21.TeacherDataSource>()));
    gh.lazySingleton<_i27.LeaveDataSource>(
        () => _i27.LeaveDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i28.ProfileDataSource>(
        () => _i28.ProfileDataSourceImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i29.IdRequestTypeDataSource>(
        () => _i29.IdRequestTypeImpl(gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i30.TimeTableRepository>(() => _i31.TimeTableRepoImpl(
          gh<_i24.OfflineExamDataSource>(),
          gh<_i20.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i32.PaymentRemoteDataSource>(() =>
        _i32.PaymentRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i33.ChatRepository>(
        () => _i34.ChatRepositoryImpl(gh<_i16.ChatDataSource>()));
    gh.lazySingleton<_i35.HomeRemoteDataSource>(() =>
        _i35.HomeRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i36.ProfileRepository>(
        () => _i37.ProfileRepositoryImpl(gh<_i28.ProfileDataSource>()));
    gh.lazySingleton<_i38.DrawerMenuItemsRemoteDataSource>(() =>
        _i38.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i39.AcademicRepository>(
        () => _i40.AcademicRepositoryImpl(gh<_i23.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i41.LibraryRepository>(
        () => _i42.LibraryRepoImpl(gh<_i22.LibraryDataSource>()));
    gh.factory<_i43.GetSiblingsUseCase>(
        () => _i43.GetSiblingsUseCase(gh<_i36.ProfileRepository>()));
    gh.singleton<_i44.GetUserDetailsUseCase>(
        () => _i44.GetUserDetailsUseCase(gh<_i36.ProfileRepository>()));
    gh.singleton<_i45.UpdateProfileUseCase>(
        () => _i45.UpdateProfileUseCase(gh<_i36.ProfileRepository>()));
    gh.lazySingleton<_i46.PaymentRepository>(() => _i47.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i32.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i48.DashBoardRemoteDataSource>(() =>
        _i48.DashBoardRemoteDataSourceImpl(
            apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i49.GetAcademicSubjectUseCase>(() =>
        _i49.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i50.GetDivisionDetailsUseCase>(() =>
        _i50.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i51.DrawerMenuItemsRepository>(() =>
        _i52.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i38.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i53.AuthLocalDataSource>(() =>
        _i53.AuthLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i54.ConnectionChecker>(
        () => _i54.ConnectionCheckerImpl(gh<_i55.InternetConnectionChecker>()));
    gh.lazySingleton<_i56.HomeRepository>(() => _i57.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i35.HomeRemoteDataSource>()));
    gh.lazySingleton<_i58.HomeWorkNotesRemoteDataSource>(() =>
        _i58.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i59.AuthRemoteDataSource>(
        () => _i59.AuthRemoteDataSourceImpl(
              gh<_i10.ApiProvider>(),
              gh<_i11.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i60.NoticeRemoteDataSource>(() =>
        _i60.NoticeRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i61.DashBoardLocalDataSource>(() =>
        _i61.DashBoardLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i62.GetVehicleCurrentLocation>(() =>
        _i62.GetVehicleCurrentLocation(gh<_i18.VehicleTrackerRepository>()));
    gh.lazySingleton<_i63.GetVehicleTrackerStopsUseCase>(() =>
        _i63.GetVehicleTrackerStopsUseCase(
            gh<_i18.VehicleTrackerRepository>()));
    gh.lazySingleton<_i64.GetSyllabusTermsUseCase>(() =>
        _i64.GetSyllabusTermsUseCase(
            academicRepository: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i65.GetSyllabusUseCase>(() => _i65.GetSyllabusUseCase(
        academicRepository: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i66.GetPaymentFinalAmountUsecase>(() =>
        _i66.GetPaymentFinalAmountUsecase(
            paymentRepository: gh<_i46.PaymentRepository>()));
    gh.lazySingleton<_i67.GetPaymentOrderIdUsecase>(() =>
        _i67.GetPaymentOrderIdUsecase(
            paymentRepository: gh<_i46.PaymentRepository>()));
    gh.lazySingleton<_i68.GetNewsBoardUseCase>(() => _i68.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i51.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i69.LeaveRepository>(
        () => _i70.LeaveRepositoryImpl(gh<_i27.LeaveDataSource>()));
    gh.lazySingleton<_i71.GetTeacherRatingUseCase>(
        () => _i71.GetTeacherRatingUseCase(gh<_i25.TeacherRepository>()));
    gh.lazySingleton<_i72.PostTeacherRatingUseCase>(
        () => _i72.PostTeacherRatingUseCase(gh<_i25.TeacherRepository>()));
    gh.lazySingleton<_i73.GetTeacherRatingQuestionsUseCase>(() =>
        _i73.GetTeacherRatingQuestionsUseCase(gh<_i25.TeacherRepository>()));
    gh.lazySingleton<_i74.GetClassInforUseCase>(
        () => _i74.GetClassInforUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i75.GetAddOnUsecase>(
        () => _i75.GetAddOnUsecase(homeRepository: gh<_i56.HomeRepository>()));
    gh.lazySingleton<_i76.PostfeedbackUsecase>(() =>
        _i76.PostfeedbackUsecase(homeRepository: gh<_i56.HomeRepository>()));
    gh.lazySingleton<_i77.IdRequestRepository>(
        () => _i78.IdRequestRepoImpl(gh<_i29.IdRequestTypeDataSource>()));
    gh.factory<_i79.GetPaymentCompleteResponseUsecase>(() =>
        _i79.GetPaymentCompleteResponseUsecase(gh<_i46.PaymentRepository>()));
    gh.factory<_i80.GetPaymentDashboardUsecase>(
        () => _i80.GetPaymentDashboardUsecase(gh<_i46.PaymentRepository>()));
    gh.factory<_i81.GetPaymentTokenUsecase>(
        () => _i81.GetPaymentTokenUsecase(gh<_i46.PaymentRepository>()));
    gh.factory<_i82.PostPaymentStatusUpdateUsecase>(() =>
        _i82.PostPaymentStatusUpdateUsecase(gh<_i46.PaymentRepository>()));
    gh.factory<_i83.SavePaymentResponseUsecase>(
        () => _i83.SavePaymentResponseUsecase(gh<_i46.PaymentRepository>()));
    gh.singleton<_i84.GetChatRoomsUseCase>(
        () => _i84.GetChatRoomsUseCase(gh<_i33.ChatRepository>()));
    gh.singleton<_i85.SendMessageUserCase>(
        () => _i85.SendMessageUserCase(gh<_i33.ChatRepository>()));
    gh.factory<_i86.AddChatRoomUseCase>(
        () => _i86.AddChatRoomUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i87.GetChatUseCase>(
        () => _i87.GetChatUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i88.GetUserMembersUseCase>(
        () => _i88.GetUserMembersUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i89.GetUsersUseCase>(
        () => _i89.GetUsersUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i90.UpdateMessageUseCase>(
        () => _i90.UpdateMessageUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i91.UpdateRoomUseCase>(
        () => _i91.UpdateRoomUseCase(gh<_i33.ChatRepository>()));
    gh.lazySingleton<_i92.GetDailyTimeTableUseCase>(
        () => _i92.GetDailyTimeTableUseCase(gh<_i30.TimeTableRepository>()));
    gh.lazySingleton<_i93.GetOfflineExamTermsUseCase>(
        () => _i93.GetOfflineExamTermsUseCase(gh<_i30.TimeTableRepository>()));
    gh.lazySingleton<_i94.GetOfflineExamTimeTableUseCase>(() =>
        _i94.GetOfflineExamTimeTableUseCase(gh<_i30.TimeTableRepository>()));
    gh.lazySingleton<_i95.HomeWorkNotesRepository>(() =>
        _i96.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i58.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i97.GetAcademicTypesUseCase>(
        () => _i97.GetAcademicTypesUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i98.DigitalLibraryUseCase>(
        () => _i98.DigitalLibraryUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i99.GetDashboardLeaveUseCase>(
        () => _i99.GetDashboardLeaveUseCase(gh<_i69.LeaveRepository>()));
    gh.lazySingleton<_i100.GetPhysicalLibraryUseCase>(
        () => _i100.GetPhysicalLibraryUseCase(gh<_i41.LibraryRepository>()));
    gh.lazySingleton<_i101.PostPhysicalLibraryUseCase>(
        () => _i101.PostPhysicalLibraryUseCase(gh<_i41.LibraryRepository>()));
    gh.lazySingleton<_i102.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i102.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i41.LibraryRepository>()));
    gh.lazySingleton<_i103.DashBoardRepository>(() => _i104.DashBoardRepoImpl(
          gh<_i48.DashBoardRemoteDataSource>(),
          gh<_i54.ConnectionChecker>(),
          gh<_i61.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i105.AuthRepository>(() => _i106.AuthRepositoryImpl(
          gh<_i54.ConnectionChecker>(),
          authRemoteDataSource: gh<_i59.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i53.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i107.NoticeRepository>(() => _i108.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i60.NoticeRemoteDataSource>()));
    gh.factory<_i109.GetAllNoticeUseCase>(() => _i109.GetAllNoticeUseCase(
        noticeRepository: gh<_i107.NoticeRepository>()));
    gh.lazySingleton<_i110.GetIdRequestTypeUseCase>(
        () => _i110.GetIdRequestTypeUseCase(gh<_i77.IdRequestRepository>()));
    gh.lazySingleton<_i111.PostIdRequestUseCase>(
        () => _i111.PostIdRequestUseCase(gh<_i77.IdRequestRepository>()));
    gh.factory<_i112.FetchWordThoughtUseCase>(
        () => _i112.FetchWordThoughtUseCase(gh<_i103.DashBoardRepository>()));
    gh.factory<_i113.GetRoleMenuUsecase>(
        () => _i113.GetRoleMenuUsecase(gh<_i103.DashBoardRepository>()));
    gh.factory<_i114.GetScoreboardDetailsUsecase>(() =>
        _i114.GetScoreboardDetailsUsecase(gh<_i103.DashBoardRepository>()));
    gh.factory<_i115.GetTermDetailsUsecase>(
        () => _i115.GetTermDetailsUsecase(gh<_i103.DashBoardRepository>()));
    gh.lazySingleton<_i116.HomeWorkReportsUseCase>(() =>
        _i116.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i95.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i117.GetHomeWorkDetails>(() => _i117.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i95.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i118.NotesReportsUseCase>(() => _i118.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i95.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i119.GetNoteReportDetails>(() =>
        _i119.GetNoteReportDetails(
            homeWorkNotesRepository: gh<_i95.HomeWorkNotesRepository>()));
    gh.factory<_i120.GetNoticeBoardPopUp>(
        () => _i120.GetNoticeBoardPopUp(gh<_i107.NoticeRepository>()));
    gh.singleton<_i121.SignOutUseCase>(
        () => _i121.SignOutUseCase(gh<_i105.AuthRepository>()));
    gh.lazySingleton<_i122.GetUserInfoUseCase>(
        () => _i122.GetUserInfoUseCase(gh<_i105.AuthRepository>()));
    gh.lazySingleton<_i123.LoginUseCase>(
        () => _i123.LoginUseCase(gh<_i105.AuthRepository>()));
    gh.lazySingleton<_i124.SaveUserInfoUseCase>(
        () => _i124.SaveUserInfoUseCase(gh<_i105.AuthRepository>()));
    gh.factory<_i125.PaymentBloc>(() => _i125.PaymentBloc(
          gh<_i80.GetPaymentDashboardUsecase>(),
          gh<_i122.GetUserInfoUseCase>(),
          gh<_i66.GetPaymentFinalAmountUsecase>(),
          gh<_i67.GetPaymentOrderIdUsecase>(),
          gh<_i81.GetPaymentTokenUsecase>(),
          gh<_i79.GetPaymentCompleteResponseUsecase>(),
          gh<_i82.PostPaymentStatusUpdateUsecase>(),
          gh<_i83.SavePaymentResponseUsecase>(),
        ));
    gh.factory<_i126.DashboardBloc>(() => _i126.DashboardBloc(
          gh<_i112.FetchWordThoughtUseCase>(),
          gh<_i122.GetUserInfoUseCase>(),
          gh<_i115.GetTermDetailsUsecase>(),
          gh<_i114.GetScoreboardDetailsUsecase>(),
        ));
    gh.factory<_i127.NoticeBloc>(() => _i127.NoticeBloc(
          gh<_i120.GetNoticeBoardPopUp>(),
          gh<_i109.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i128.HomeBloc>(() => _i128.HomeBloc(
          gh<_i75.GetAddOnUsecase>(),
          gh<_i122.GetUserInfoUseCase>(),
          gh<_i76.PostfeedbackUsecase>(),
        ));
    gh.factory<_i129.AcademicBloc>(() => _i129.AcademicBloc(
          gh<_i50.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i74.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i122.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i49.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i65.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i64.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i130.DrawerBloc>(() => _i130.DrawerBloc(
          gh<_i68.GetNewsBoardUseCase>(),
          gh<_i122.GetUserInfoUseCase>(),
          gh<_i113.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i131.HomeWorkNotesBloc>(() => _i131.HomeWorkNotesBloc(
          gh<_i116.HomeWorkReportsUseCase>(),
          gh<_i122.GetUserInfoUseCase>(),
          gh<_i118.NotesReportsUseCase>(),
          gh<_i119.GetNoteReportDetails>(),
          gh<_i117.GetHomeWorkDetails>(),
        ));
    return this;
  }
}
