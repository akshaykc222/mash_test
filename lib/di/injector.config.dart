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
    as _i56;

import '../core/api_provider.dart' as _i10;
import '../core/connection_checker.dart' as _i55;
import '../core/firebase_database.dart' as _i11;
import '../core/hive_service.dart' as _i12;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i54;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i67;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i23;
import '../mash/data/remote/data_sources/add_on_data_source.dart' as _i60;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i63;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i16;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i49;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i38;
import '../mash/data/remote/data_sources/facility_data_source.dart' as _i41;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i35;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i59;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i29;
import '../mash/data/remote/data_sources/leave_data_source.dart' as _i27;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i22;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i64;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i24;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i32;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i28;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i21;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i17;
import '../mash/data/repositories/academic_repository_impl.dart' as _i40;
import '../mash/data/repositories/auth_repository_impl.dart' as _i117;
import '../mash/data/repositories/chat_repository_impl.dart' as _i34;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i114;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i53;
import '../mash/data/repositories/facilities_repo_impl.dart' as _i62;
import '../mash/data/repositories/get_add_on_repository_impl.dart' as _i66;
import '../mash/data/repositories/home_repository_impl.dart' as _i58;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i104;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i84;
import '../mash/data/repositories/leave_repository_impl.dart' as _i76;
import '../mash/data/repositories/library_repo_impl.dart' as _i43;
import '../mash/data/repositories/notice_repository_impl.dart' as _i121;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i31;
import '../mash/data/repositories/payment_repo_impl.dart' as _i48;
import '../mash/data/repositories/profile_repository_impl.dart' as _i37;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i26;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i19;
import '../mash/domain/repositories/academic_repository.dart' as _i39;
import '../mash/domain/repositories/auth_repository.dart' as _i116;
import '../mash/domain/repositories/chat_repository.dart' as _i33;
import '../mash/domain/repositories/dash_board_repository.dart' as _i113;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i52;
import '../mash/domain/repositories/facilities_respository.dart' as _i61;
import '../mash/domain/repositories/get_add_on_repository.dart' as _i65;
import '../mash/domain/repositories/home_repository.dart' as _i57;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i103;
import '../mash/domain/repositories/id_request_repository.dart' as _i83;
import '../mash/domain/repositories/leave_repository.dart' as _i75;
import '../mash/domain/repositories/library_repository.dart' as _i42;
import '../mash/domain/repositories/notice_repository.dart' as _i120;
import '../mash/domain/repositories/payment_repository.dart' as _i47;
import '../mash/domain/repositories/profile_repository.dart' as _i36;
import '../mash/domain/repositories/teacher_repository.dart' as _i25;
import '../mash/domain/repositories/time_table_repository.dart' as _i30;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i18;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i50;
import '../mash/domain/use_cases/academic/get_academic_type_use_case.dart'
    as _i105;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i80;
import '../mash/domain/use_cases/academic/get_digital_library_use_case.dart'
    as _i106;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i51;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i70;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i71;
import '../mash/domain/use_cases/academic/insert_dl_click_use_case.dart'
    as _i107;
import '../mash/domain/use_cases/add_on/get_add_on_detail_use_case.dart'
    as _i118;
import '../mash/domain/use_cases/add_on/get_add_on_list_usecase.dart' as _i119;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i137;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i138;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i139;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i136;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i94;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i92;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i95;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i96;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i97;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i93;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i98;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i99;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i126;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i127;
import '../mash/domain/use_cases/dashboard/get_scoreboard_details_usecase.dart'
    as _i128;
import '../mash/domain/use_cases/dashboard/get_term_details_usecase.dart'
    as _i129;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i74;
import '../mash/domain/use_cases/facilities/get_facility_dashboard_use_case.dart'
    as _i115;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i81;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i82;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i131;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i130;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i133;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i132;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i124;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i125;
import '../mash/domain/use_cases/leave/leave_status_usecase.dart' as _i108;
import '../mash/domain/use_cases/leave/leave_use_case.dart' as _i109;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i110;
import '../mash/domain/use_cases/library/post_physical_library_request.dart'
    as _i111;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i112;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart'
    as _i134;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i123;
import '../mash/domain/use_cases/payment/get_fee_receipt_by_docname_usecase.dart'
    as _i85;
import '../mash/domain/use_cases/payment/get_payment_complete_response_usecase.dart'
    as _i86;
import '../mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart'
    as _i87;
import '../mash/domain/use_cases/payment/get_payment_fee_receipt_usecase.dart'
    as _i88;
import '../mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart'
    as _i72;
import '../mash/domain/use_cases/payment/get_payment_order_id_usecase.dart'
    as _i73;
import '../mash/domain/use_cases/payment/get_payment_token_usecase.dart'
    as _i89;
import '../mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart'
    as _i90;
import '../mash/domain/use_cases/payment/save_payment_reponse_usecase.dart'
    as _i91;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i44;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i45;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i46;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i77;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i78;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i79;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i100;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i101;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i102;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i68;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i69;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i144;
import '../mash/presentation/manager/bloc/addon_bloc/add_on_bloc.dart' as _i135;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i142;
import '../mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart'
    as _i13;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i145;
import '../mash/presentation/manager/bloc/facilities_bloc/facilities_bloc.dart'
    as _i122;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i141;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i146;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/leave_bloc/leave_bloc.dart' as _i6;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i7;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i143;
import '../mash/presentation/manager/bloc/payment/payment_bloc.dart' as _i140;
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
    gh.lazySingleton<_i41.FacilityDataSource>(
        () => _i41.FacilityDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i42.LibraryRepository>(
        () => _i43.LibraryRepoImpl(gh<_i22.LibraryDataSource>()));
    gh.factory<_i44.GetSiblingsUseCase>(
        () => _i44.GetSiblingsUseCase(gh<_i36.ProfileRepository>()));
    gh.singleton<_i45.GetUserDetailsUseCase>(
        () => _i45.GetUserDetailsUseCase(gh<_i36.ProfileRepository>()));
    gh.singleton<_i46.UpdateProfileUseCase>(
        () => _i46.UpdateProfileUseCase(gh<_i36.ProfileRepository>()));
    gh.lazySingleton<_i47.PaymentRepository>(() => _i48.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i32.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i49.DashBoardRemoteDataSource>(() =>
        _i49.DashBoardRemoteDataSourceImpl(
            apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i50.GetAcademicSubjectUseCase>(() =>
        _i50.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i51.GetDivisionDetailsUseCase>(() =>
        _i51.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i52.DrawerMenuItemsRepository>(() =>
        _i53.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i38.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i54.AuthLocalDataSource>(() =>
        _i54.AuthLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i55.ConnectionChecker>(
        () => _i55.ConnectionCheckerImpl(gh<_i56.InternetConnectionChecker>()));
    gh.lazySingleton<_i57.HomeRepository>(() => _i58.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i35.HomeRemoteDataSource>()));
    gh.lazySingleton<_i59.HomeWorkNotesRemoteDataSource>(() =>
        _i59.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i60.AddOnDataSource>(
        () => _i60.AddOnDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i61.FacilitiesRepository>(() =>
        _i62.FacilitiesRepositoryImpl(
            facilityDataSource: gh<_i41.FacilityDataSource>()));
    gh.lazySingleton<_i63.AuthRemoteDataSource>(
        () => _i63.AuthRemoteDataSourceImpl(
              gh<_i10.ApiProvider>(),
              gh<_i11.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i64.NoticeRemoteDataSource>(() =>
        _i64.NoticeRemoteDataSourceImpl(apiProvider: gh<_i10.ApiProvider>()));
    gh.lazySingleton<_i65.GetAddOnRepository>(() => _i66.GetAddOnRepositoryImpl(
        addOnDataSource: gh<_i60.AddOnDataSource>()));
    gh.lazySingleton<_i67.DashBoardLocalDataSource>(() =>
        _i67.DashBoardLocalDataSourceImpl(hiveService: gh<_i12.HiveService>()));
    gh.lazySingleton<_i68.GetVehicleCurrentLocation>(() =>
        _i68.GetVehicleCurrentLocation(gh<_i18.VehicleTrackerRepository>()));
    gh.lazySingleton<_i69.GetVehicleTrackerStopsUseCase>(() =>
        _i69.GetVehicleTrackerStopsUseCase(
            gh<_i18.VehicleTrackerRepository>()));
    gh.lazySingleton<_i70.GetSyllabusTermsUseCase>(() =>
        _i70.GetSyllabusTermsUseCase(
            academicRepository: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i71.GetSyllabusUseCase>(() => _i71.GetSyllabusUseCase(
        academicRepository: gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i72.GetPaymentFinalAmountUsecase>(() =>
        _i72.GetPaymentFinalAmountUsecase(
            paymentRepository: gh<_i47.PaymentRepository>()));
    gh.lazySingleton<_i73.GetPaymentOrderIdUsecase>(() =>
        _i73.GetPaymentOrderIdUsecase(
            paymentRepository: gh<_i47.PaymentRepository>()));
    gh.lazySingleton<_i74.GetNewsBoardUseCase>(() => _i74.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i52.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i75.LeaveRepository>(
        () => _i76.LeaveRepositoryImpl(gh<_i27.LeaveDataSource>()));
    gh.lazySingleton<_i77.GetTeacherRatingUseCase>(
        () => _i77.GetTeacherRatingUseCase(gh<_i25.TeacherRepository>()));
    gh.lazySingleton<_i78.PostTeacherRatingUseCase>(
        () => _i78.PostTeacherRatingUseCase(gh<_i25.TeacherRepository>()));
    gh.lazySingleton<_i79.GetTeacherRatingQuestionsUseCase>(() =>
        _i79.GetTeacherRatingQuestionsUseCase(gh<_i25.TeacherRepository>()));
    gh.lazySingleton<_i80.GetClassInforUseCase>(
        () => _i80.GetClassInforUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i81.GetAddOnUsecase>(
        () => _i81.GetAddOnUsecase(homeRepository: gh<_i57.HomeRepository>()));
    gh.lazySingleton<_i82.PostfeedbackUsecase>(() =>
        _i82.PostfeedbackUsecase(homeRepository: gh<_i57.HomeRepository>()));
    gh.lazySingleton<_i83.IdRequestRepository>(
        () => _i84.IdRequestRepoImpl(gh<_i29.IdRequestTypeDataSource>()));
    gh.factory<_i85.GetFeeReceiptByDocnameUsecase>(
        () => _i85.GetFeeReceiptByDocnameUsecase(gh<_i47.PaymentRepository>()));
    gh.factory<_i86.GetPaymentCompleteResponseUsecase>(() =>
        _i86.GetPaymentCompleteResponseUsecase(gh<_i47.PaymentRepository>()));
    gh.factory<_i87.GetPaymentDashboardUsecase>(
        () => _i87.GetPaymentDashboardUsecase(gh<_i47.PaymentRepository>()));
    gh.factory<_i88.GetPaymentFeeReceiptUsecase>(
        () => _i88.GetPaymentFeeReceiptUsecase(gh<_i47.PaymentRepository>()));
    gh.factory<_i89.GetPaymentTokenUsecase>(
        () => _i89.GetPaymentTokenUsecase(gh<_i47.PaymentRepository>()));
    gh.factory<_i90.PostPaymentStatusUpdateUsecase>(() =>
        _i90.PostPaymentStatusUpdateUsecase(gh<_i47.PaymentRepository>()));
    gh.factory<_i91.SavePaymentResponseUsecase>(
        () => _i91.SavePaymentResponseUsecase(gh<_i47.PaymentRepository>()));
    gh.singleton<_i92.GetChatRoomsUseCase>(
        () => _i92.GetChatRoomsUseCase(gh<_i33.ChatRepository>()));
    gh.singleton<_i93.SendMessageUserCase>(
        () => _i93.SendMessageUserCase(gh<_i33.ChatRepository>()));
    gh.factory<_i94.AddChatRoomUseCase>(
        () => _i94.AddChatRoomUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i95.GetChatUseCase>(
        () => _i95.GetChatUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i96.GetUserMembersUseCase>(
        () => _i96.GetUserMembersUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i97.GetUsersUseCase>(
        () => _i97.GetUsersUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i98.UpdateMessageUseCase>(
        () => _i98.UpdateMessageUseCase(gh<_i33.ChatRepository>()));
    gh.factory<_i99.UpdateRoomUseCase>(
        () => _i99.UpdateRoomUseCase(gh<_i33.ChatRepository>()));
    gh.lazySingleton<_i100.GetDailyTimeTableUseCase>(
        () => _i100.GetDailyTimeTableUseCase(gh<_i30.TimeTableRepository>()));
    gh.lazySingleton<_i101.GetOfflineExamTermsUseCase>(
        () => _i101.GetOfflineExamTermsUseCase(gh<_i30.TimeTableRepository>()));
    gh.lazySingleton<_i102.GetOfflineExamTimeTableUseCase>(() =>
        _i102.GetOfflineExamTimeTableUseCase(gh<_i30.TimeTableRepository>()));
    gh.lazySingleton<_i103.HomeWorkNotesRepository>(() =>
        _i104.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i59.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i105.GetAcademicTypesUseCase>(
        () => _i105.GetAcademicTypesUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i106.DigitalLibraryUseCase>(
        () => _i106.DigitalLibraryUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i107.InsertDlClickUseCase>(
        () => _i107.InsertDlClickUseCase(gh<_i39.AcademicRepository>()));
    gh.lazySingleton<_i108.GetLeaveStatusUsecase>(
        () => _i108.GetLeaveStatusUsecase(gh<_i75.LeaveRepository>()));
    gh.lazySingleton<_i109.GetDashboardLeaveUseCase>(
        () => _i109.GetDashboardLeaveUseCase(gh<_i75.LeaveRepository>()));
    gh.lazySingleton<_i110.GetPhysicalLibraryUseCase>(
        () => _i110.GetPhysicalLibraryUseCase(gh<_i42.LibraryRepository>()));
    gh.lazySingleton<_i111.PostPhysicalLibraryUseCase>(
        () => _i111.PostPhysicalLibraryUseCase(gh<_i42.LibraryRepository>()));
    gh.lazySingleton<_i112.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i112.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i42.LibraryRepository>()));
    gh.lazySingleton<_i113.DashBoardRepository>(() => _i114.DashBoardRepoImpl(
          gh<_i49.DashBoardRemoteDataSource>(),
          gh<_i55.ConnectionChecker>(),
          gh<_i67.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i115.GetFacilitiesDashBoardUseCase>(() =>
        _i115.GetFacilitiesDashBoardUseCase(
            facilitiesRepository: gh<_i61.FacilitiesRepository>()));
    gh.lazySingleton<_i116.AuthRepository>(() => _i117.AuthRepositoryImpl(
          gh<_i55.ConnectionChecker>(),
          authRemoteDataSource: gh<_i63.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i54.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i118.GetAddOnDetailUseCase>(() =>
        _i118.GetAddOnDetailUseCase(
            getAddOnRepository: gh<_i65.GetAddOnRepository>()));
    gh.lazySingleton<_i119.GetAllAddOnUseCase>(() => _i119.GetAllAddOnUseCase(
        getAddOnRepository: gh<_i65.GetAddOnRepository>()));
    gh.lazySingleton<_i120.NoticeRepository>(() => _i121.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i64.NoticeRemoteDataSource>()));
    gh.factory<_i122.FacilitiesBloc>(
        () => _i122.FacilitiesBloc(gh<_i115.GetFacilitiesDashBoardUseCase>()));
    gh.lazySingleton<_i123.GetAllNoticeUseCase>(() => _i123.GetAllNoticeUseCase(
        noticeRepository: gh<_i120.NoticeRepository>()));
    gh.lazySingleton<_i124.GetIdRequestTypeUseCase>(
        () => _i124.GetIdRequestTypeUseCase(gh<_i83.IdRequestRepository>()));
    gh.lazySingleton<_i125.PostIdRequestUseCase>(
        () => _i125.PostIdRequestUseCase(gh<_i83.IdRequestRepository>()));
    gh.factory<_i126.FetchWordThoughtUseCase>(
        () => _i126.FetchWordThoughtUseCase(gh<_i113.DashBoardRepository>()));
    gh.factory<_i127.GetRoleMenuUsecase>(
        () => _i127.GetRoleMenuUsecase(gh<_i113.DashBoardRepository>()));
    gh.factory<_i128.GetScoreboardDetailsUsecase>(() =>
        _i128.GetScoreboardDetailsUsecase(gh<_i113.DashBoardRepository>()));
    gh.factory<_i129.GetTermDetailsUsecase>(
        () => _i129.GetTermDetailsUsecase(gh<_i113.DashBoardRepository>()));
    gh.lazySingleton<_i130.HomeWorkReportsUseCase>(() =>
        _i130.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i103.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i131.GetHomeWorkDetails>(() => _i131.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i103.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i132.NotesReportsUseCase>(() => _i132.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i103.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i133.GetNoteReportDetails>(() =>
        _i133.GetNoteReportDetails(
            homeWorkNotesRepository: gh<_i103.HomeWorkNotesRepository>()));
    gh.factory<_i134.GetNoticeBoardPopUp>(
        () => _i134.GetNoticeBoardPopUp(gh<_i120.NoticeRepository>()));
    gh.factory<_i135.AddOnBloc>(() => _i135.AddOnBloc(
          gh<_i119.GetAllAddOnUseCase>(),
          gh<_i118.GetAddOnDetailUseCase>(),
        ));
    gh.singleton<_i136.SignOutUseCase>(
        () => _i136.SignOutUseCase(gh<_i116.AuthRepository>()));
    gh.lazySingleton<_i137.GetUserInfoUseCase>(
        () => _i137.GetUserInfoUseCase(gh<_i116.AuthRepository>()));
    gh.lazySingleton<_i138.LoginUseCase>(
        () => _i138.LoginUseCase(gh<_i116.AuthRepository>()));
    gh.lazySingleton<_i139.SaveUserInfoUseCase>(
        () => _i139.SaveUserInfoUseCase(gh<_i116.AuthRepository>()));
    gh.factory<_i140.PaymentBloc>(() => _i140.PaymentBloc(
          gh<_i87.GetPaymentDashboardUsecase>(),
          gh<_i137.GetUserInfoUseCase>(),
          gh<_i72.GetPaymentFinalAmountUsecase>(),
          gh<_i73.GetPaymentOrderIdUsecase>(),
          gh<_i89.GetPaymentTokenUsecase>(),
          gh<_i86.GetPaymentCompleteResponseUsecase>(),
          gh<_i90.PostPaymentStatusUpdateUsecase>(),
          gh<_i91.SavePaymentResponseUsecase>(),
          gh<_i88.GetPaymentFeeReceiptUsecase>(),
          gh<_i85.GetFeeReceiptByDocnameUsecase>(),
        ));
    gh.factory<_i141.HomeBloc>(() => _i141.HomeBloc(
          gh<_i81.GetAddOnUsecase>(),
          gh<_i137.GetUserInfoUseCase>(),
          gh<_i82.PostfeedbackUsecase>(),
        ));
    gh.factory<_i142.DashboardBloc>(() => _i142.DashboardBloc(
          gh<_i126.FetchWordThoughtUseCase>(),
          gh<_i137.GetUserInfoUseCase>(),
          gh<_i129.GetTermDetailsUsecase>(),
          gh<_i128.GetScoreboardDetailsUsecase>(),
        ));
    gh.factory<_i143.NoticeBloc>(() => _i143.NoticeBloc(
          gh<_i134.GetNoticeBoardPopUp>(),
          gh<_i123.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i144.AcademicBloc>(() => _i144.AcademicBloc(
          gh<_i51.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i80.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i137.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i50.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i71.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i70.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i145.DrawerBloc>(() => _i145.DrawerBloc(
          gh<_i74.GetNewsBoardUseCase>(),
          gh<_i137.GetUserInfoUseCase>(),
          gh<_i127.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i146.HomeWorkNotesBloc>(() => _i146.HomeWorkNotesBloc(
          gh<_i130.HomeWorkReportsUseCase>(),
          gh<_i137.GetUserInfoUseCase>(),
          gh<_i132.NotesReportsUseCase>(),
          gh<_i133.GetNoteReportDetails>(),
          gh<_i131.GetHomeWorkDetails>(),
        ));
    return this;
  }
}
