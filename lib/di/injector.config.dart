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
    as _i53;

import '../core/api_provider.dart' as _i9;
import '../core/connection_checker.dart' as _i52;
import '../core/firebase_database.dart' as _i10;
import '../core/hive_service.dart' as _i11;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i51;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i59;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i22;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i57;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i15;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i46;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i36;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i33;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i56;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i27;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i58;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i23;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i30;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i26;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i20;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i19;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i16;
import '../mash/data/repositories/academic_repository_impl.dart' as _i38;
import '../mash/data/repositories/auth_repository_impl.dart' as _i100;
import '../mash/data/repositories/chat_repository_impl.dart' as _i32;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i98;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i50;
import '../mash/data/repositories/home_repository_impl.dart' as _i55;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i92;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i74;
import '../mash/data/repositories/library_repo_impl.dart' as _i40;
import '../mash/data/repositories/notice_repository_impl.dart' as _i102;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i29;
import '../mash/data/repositories/payment_repo_impl.dart' as _i45;
import '../mash/data/repositories/profile_repository_impl.dart' as _i35;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i25;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i18;
import '../mash/domain/repositories/academic_repository.dart' as _i37;
import '../mash/domain/repositories/auth_repository.dart' as _i99;
import '../mash/domain/repositories/chat_repository.dart' as _i31;
import '../mash/domain/repositories/dash_board_repository.dart' as _i97;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i49;
import '../mash/domain/repositories/home_repository.dart' as _i54;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i91;
import '../mash/domain/repositories/id_request_repository.dart' as _i73;
import '../mash/domain/repositories/library_repository.dart' as _i39;
import '../mash/domain/repositories/notice_repository.dart' as _i101;
import '../mash/domain/repositories/payment_repository.dart' as _i44;
import '../mash/domain/repositories/profile_repository.dart' as _i34;
import '../mash/domain/repositories/teacher_repository.dart' as _i24;
import '../mash/domain/repositories/time_table_repository.dart' as _i28;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i17;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i47;
import '../mash/domain/use_cases/academic/get_academic_type_use_case.dart'
    as _i93;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i70;
import '../mash/domain/use_cases/academic/get_digital_library_use_case.dart'
    as _i94;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i48;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i62;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i63;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i115;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i116;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i117;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i114;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i82;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i80;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i83;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i84;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i85;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i81;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i86;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i87;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i106;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i107;
import '../mash/domain/use_cases/dashboard/get_term_details_usecase.dart'
    as _i108;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i66;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i71;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i72;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i110;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i109;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i112;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i111;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i104;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i105;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i95;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i96;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart'
    as _i113;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i103;
import '../mash/domain/use_cases/payment/get_payment_complete_response_usecase.dart'
    as _i75;
import '../mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart'
    as _i76;
import '../mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart'
    as _i64;
import '../mash/domain/use_cases/payment/get_payment_order_id_usecase.dart'
    as _i65;
import '../mash/domain/use_cases/payment/get_payment_token_usecase.dart'
    as _i77;
import '../mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart'
    as _i78;
import '../mash/domain/use_cases/payment/save_payment_reponse_usecase.dart'
    as _i79;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i41;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i42;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i43;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i67;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i68;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i69;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i88;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i89;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i90;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i60;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i61;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i122;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i120;
import '../mash/presentation/manager/bloc/digital_library/digital_library_bloc.dart'
    as _i12;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i123;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i121;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i124;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i119;
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
    gh.singleton<_i9.ApiProvider>(() => _i9.ApiProvider());
    gh.singleton<_i10.FirebaseDatabaseMethods>(
        () => _i10.FirebaseDatabaseMethods());
    gh.lazySingleton<_i11.HiveService>(() => _i11.HiveService());
    gh.lazySingleton<_i12.DigitalLibraryBloc>(() => _i12.DigitalLibraryBloc());
    gh.lazySingleton<_i13.TimeTableBloc>(() => _i13.TimeTableBloc());
    gh.lazySingleton<_i14.VehicleTrackerStopsBloc>(
        () => _i14.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i15.ChatDataSource>(() => _i15.ChatDataSourceImpl(
          gh<_i10.FirebaseDatabaseMethods>(),
          gh<_i11.HiveService>(),
        ));
    gh.lazySingleton<_i16.VehicleTrackerDataSource>(
        () => _i16.VehicleTrackerImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i17.VehicleTrackerRepository>(
        () => _i18.VehicleTrackerRepoImpl(gh<_i16.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i19.TimeTableDataSource>(
        () => _i19.TimeTableDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i20.TeacherDataSource>(
        () => _i20.TeacherDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i21.LibraryDataSource>(
        () => _i21.LibraryDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i22.AcademicRemoteDataSource>(
        () => _i22.AcademicRemoteDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i23.OfflineExamDataSource>(
        () => _i23.OfflineExamTermImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i24.TeacherRepository>(
        () => _i25.TeacherRepoImpl(gh<_i20.TeacherDataSource>()));
    gh.lazySingleton<_i26.ProfileDataSource>(
        () => _i26.ProfileDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i27.IdRequestTypeDataSource>(
        () => _i27.IdRequestTypeImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i28.TimeTableRepository>(() => _i29.TimeTableRepoImpl(
          gh<_i23.OfflineExamDataSource>(),
          gh<_i19.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i30.PaymentRemoteDataSource>(() =>
        _i30.PaymentRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i31.ChatRepository>(
        () => _i32.ChatRepositoryImpl(gh<_i15.ChatDataSource>()));
    gh.lazySingleton<_i33.HomeRemoteDataSource>(() =>
        _i33.HomeRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i34.ProfileRepository>(
        () => _i35.ProfileRepositoryImpl(gh<_i26.ProfileDataSource>()));
    gh.lazySingleton<_i36.DrawerMenuItemsRemoteDataSource>(() =>
        _i36.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i37.AcademicRepository>(
        () => _i38.AcademicRepositoryImpl(gh<_i22.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i39.LibraryRepository>(
        () => _i40.LibraryRepoImpl(gh<_i21.LibraryDataSource>()));
    gh.factory<_i41.GetSiblingsUseCase>(
        () => _i41.GetSiblingsUseCase(gh<_i34.ProfileRepository>()));
    gh.singleton<_i42.GetUserDetailsUseCase>(
        () => _i42.GetUserDetailsUseCase(gh<_i34.ProfileRepository>()));
    gh.singleton<_i43.UpdateProfileUseCase>(
        () => _i43.UpdateProfileUseCase(gh<_i34.ProfileRepository>()));
    gh.lazySingleton<_i44.PaymentRepository>(() => _i45.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i30.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i46.DashBoardRemoteDataSource>(() =>
        _i46.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i47.GetAcademicSubjectUseCase>(() =>
        _i47.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i48.GetDivisionDetailsUseCase>(() =>
        _i48.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i49.DrawerMenuItemsRepository>(() =>
        _i50.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i36.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i51.AuthLocalDataSource>(() =>
        _i51.AuthLocalDataSourceImpl(hiveService: gh<_i11.HiveService>()));
    gh.lazySingleton<_i52.ConnectionChecker>(
        () => _i52.ConnectionCheckerImpl(gh<_i53.InternetConnectionChecker>()));
    gh.lazySingleton<_i54.HomeRepository>(() => _i55.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i33.HomeRemoteDataSource>()));
    gh.lazySingleton<_i56.HomeWorkNotesRemoteDataSource>(() =>
        _i56.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i57.AuthRemoteDataSource>(
        () => _i57.AuthRemoteDataSourceImpl(
              gh<_i9.ApiProvider>(),
              gh<_i10.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i58.NoticeRemoteDataSource>(() =>
        _i58.NoticeRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i59.DashBoardLocalDataSource>(() =>
        _i59.DashBoardLocalDataSourceImpl(hiveService: gh<_i11.HiveService>()));
    gh.lazySingleton<_i60.GetVehicleCurrentLocation>(() =>
        _i60.GetVehicleCurrentLocation(gh<_i17.VehicleTrackerRepository>()));
    gh.lazySingleton<_i61.GetVehicleTrackerStopsUseCase>(() =>
        _i61.GetVehicleTrackerStopsUseCase(
            gh<_i17.VehicleTrackerRepository>()));
    gh.lazySingleton<_i62.GetSyllabusTermsUseCase>(() =>
        _i62.GetSyllabusTermsUseCase(
            academicRepository: gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i63.GetSyllabusUseCase>(() => _i63.GetSyllabusUseCase(
        academicRepository: gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i64.GetPaymentFinalAmountUsecase>(() =>
        _i64.GetPaymentFinalAmountUsecase(
            paymentRepository: gh<_i44.PaymentRepository>()));
    gh.lazySingleton<_i65.GetPaymentOrderIdUsecase>(() =>
        _i65.GetPaymentOrderIdUsecase(
            paymentRepository: gh<_i44.PaymentRepository>()));
    gh.lazySingleton<_i66.GetNewsBoardUseCase>(() => _i66.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i49.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i67.GetTeacherRatingUseCase>(
        () => _i67.GetTeacherRatingUseCase(gh<_i24.TeacherRepository>()));
    gh.lazySingleton<_i68.PostTeacherRatingUseCase>(
        () => _i68.PostTeacherRatingUseCase(gh<_i24.TeacherRepository>()));
    gh.lazySingleton<_i69.GetTeacherRatingQuestionsUseCase>(() =>
        _i69.GetTeacherRatingQuestionsUseCase(gh<_i24.TeacherRepository>()));
    gh.lazySingleton<_i70.GetClassInforUseCase>(
        () => _i70.GetClassInforUseCase(gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i71.GetAddOnUsecase>(
        () => _i71.GetAddOnUsecase(homeRepository: gh<_i54.HomeRepository>()));
    gh.lazySingleton<_i72.PostfeedbackUsecase>(() =>
        _i72.PostfeedbackUsecase(homeRepository: gh<_i54.HomeRepository>()));
    gh.lazySingleton<_i73.IdRequestRepository>(
        () => _i74.IdRequestRepoImpl(gh<_i27.IdRequestTypeDataSource>()));
    gh.factory<_i75.GetPaymentCompleteResponseUsecase>(() =>
        _i75.GetPaymentCompleteResponseUsecase(gh<_i44.PaymentRepository>()));
    gh.factory<_i76.GetPaymentDashboardUsecase>(
        () => _i76.GetPaymentDashboardUsecase(gh<_i44.PaymentRepository>()));
    gh.factory<_i77.GetPaymentTokenUsecase>(
        () => _i77.GetPaymentTokenUsecase(gh<_i44.PaymentRepository>()));
    gh.factory<_i78.PostPaymentStatusUpdateUsecase>(() =>
        _i78.PostPaymentStatusUpdateUsecase(gh<_i44.PaymentRepository>()));
    gh.factory<_i79.SavePaymentResponseUsecase>(
        () => _i79.SavePaymentResponseUsecase(gh<_i44.PaymentRepository>()));
    gh.singleton<_i80.GetChatRoomsUseCase>(
        () => _i80.GetChatRoomsUseCase(gh<_i31.ChatRepository>()));
    gh.singleton<_i81.SendMessageUserCase>(
        () => _i81.SendMessageUserCase(gh<_i31.ChatRepository>()));
    gh.factory<_i82.AddChatRoomUseCase>(
        () => _i82.AddChatRoomUseCase(gh<_i31.ChatRepository>()));
    gh.factory<_i83.GetChatUseCase>(
        () => _i83.GetChatUseCase(gh<_i31.ChatRepository>()));
    gh.factory<_i84.GetUserMembersUseCase>(
        () => _i84.GetUserMembersUseCase(gh<_i31.ChatRepository>()));
    gh.factory<_i85.GetUsersUseCase>(
        () => _i85.GetUsersUseCase(gh<_i31.ChatRepository>()));
    gh.factory<_i86.UpdateMessageUseCase>(
        () => _i86.UpdateMessageUseCase(gh<_i31.ChatRepository>()));
    gh.factory<_i87.UpdateRoomUseCase>(
        () => _i87.UpdateRoomUseCase(gh<_i31.ChatRepository>()));
    gh.lazySingleton<_i88.GetDailyTimeTableUseCase>(
        () => _i88.GetDailyTimeTableUseCase(gh<_i28.TimeTableRepository>()));
    gh.lazySingleton<_i89.GetOfflineExamTermsUseCase>(
        () => _i89.GetOfflineExamTermsUseCase(gh<_i28.TimeTableRepository>()));
    gh.lazySingleton<_i90.GetOfflineExamTimeTableUseCase>(() =>
        _i90.GetOfflineExamTimeTableUseCase(gh<_i28.TimeTableRepository>()));
    gh.lazySingleton<_i91.HomeWorkNotesRepository>(() =>
        _i92.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i56.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i93.GetAcademicTypesUseCase>(
        () => _i93.GetAcademicTypesUseCase(gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i94.DigitalLibraryUseCase>(
        () => _i94.DigitalLibraryUseCase(gh<_i37.AcademicRepository>()));
    gh.lazySingleton<_i95.GetPhysicalLibraryUseCase>(
        () => _i95.GetPhysicalLibraryUseCase(gh<_i39.LibraryRepository>()));
    gh.lazySingleton<_i96.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i96.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i39.LibraryRepository>()));
    gh.lazySingleton<_i97.DashBoardRepository>(() => _i98.DashBoardRepoImpl(
          gh<_i46.DashBoardRemoteDataSource>(),
          gh<_i52.ConnectionChecker>(),
          gh<_i59.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i99.AuthRepository>(() => _i100.AuthRepositoryImpl(
          gh<_i52.ConnectionChecker>(),
          authRemoteDataSource: gh<_i57.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i51.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i101.NoticeRepository>(() => _i102.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i58.NoticeRemoteDataSource>()));
    gh.factory<_i103.GetAllNoticeUseCase>(() => _i103.GetAllNoticeUseCase(
        noticeRepository: gh<_i101.NoticeRepository>()));
    gh.lazySingleton<_i104.GetIdRequestTypeUseCase>(
        () => _i104.GetIdRequestTypeUseCase(gh<_i73.IdRequestRepository>()));
    gh.lazySingleton<_i105.PostIdRequestUseCase>(
        () => _i105.PostIdRequestUseCase(gh<_i73.IdRequestRepository>()));
    gh.factory<_i106.FetchWordThoughtUseCase>(
        () => _i106.FetchWordThoughtUseCase(gh<_i97.DashBoardRepository>()));
    gh.factory<_i107.GetRoleMenuUsecase>(
        () => _i107.GetRoleMenuUsecase(gh<_i97.DashBoardRepository>()));
    gh.factory<_i108.GetTermDetailsUsecase>(
        () => _i108.GetTermDetailsUsecase(gh<_i97.DashBoardRepository>()));
    gh.lazySingleton<_i109.HomeWorkReportsUseCase>(() =>
        _i109.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i91.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i110.GetHomeWorkDetails>(() => _i110.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i91.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i111.NotesReportsUseCase>(() => _i111.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i91.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i112.GetNoteReportDetails>(() =>
        _i112.GetNoteReportDetails(
            homeWorkNotesRepository: gh<_i91.HomeWorkNotesRepository>()));
    gh.factory<_i113.GetNoticeBoardPopUp>(
        () => _i113.GetNoticeBoardPopUp(gh<_i101.NoticeRepository>()));
    gh.singleton<_i114.SignOutUseCase>(
        () => _i114.SignOutUseCase(gh<_i99.AuthRepository>()));
    gh.lazySingleton<_i115.GetUserInfoUseCase>(
        () => _i115.GetUserInfoUseCase(gh<_i99.AuthRepository>()));
    gh.lazySingleton<_i116.LoginUseCase>(
        () => _i116.LoginUseCase(gh<_i99.AuthRepository>()));
    gh.lazySingleton<_i117.SaveUserInfoUseCase>(
        () => _i117.SaveUserInfoUseCase(gh<_i99.AuthRepository>()));
    gh.factory<_i118.PaymentBloc>(() => _i118.PaymentBloc(
          gh<_i76.GetPaymentDashboardUsecase>(),
          gh<_i115.GetUserInfoUseCase>(),
          gh<_i64.GetPaymentFinalAmountUsecase>(),
          gh<_i65.GetPaymentOrderIdUsecase>(),
          gh<_i77.GetPaymentTokenUsecase>(),
          gh<_i75.GetPaymentCompleteResponseUsecase>(),
          gh<_i78.PostPaymentStatusUpdateUsecase>(),
          gh<_i79.SavePaymentResponseUsecase>(),
        ));
    gh.factory<_i119.NoticeBloc>(() => _i119.NoticeBloc(
          gh<_i113.GetNoticeBoardPopUp>(),
          gh<_i103.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i120.DashboardBloc>(() => _i120.DashboardBloc(
          gh<_i106.FetchWordThoughtUseCase>(),
          gh<_i115.GetUserInfoUseCase>(),
          gh<_i108.GetTermDetailsUsecase>(),
        ));
    gh.factory<_i121.HomeBloc>(() => _i121.HomeBloc(
          gh<_i71.GetAddOnUsecase>(),
          gh<_i115.GetUserInfoUseCase>(),
          gh<_i72.PostfeedbackUsecase>(),
        ));
    gh.factory<_i122.AcademicBloc>(() => _i122.AcademicBloc(
          gh<_i48.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i70.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i115.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i47.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i63.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i62.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i123.DrawerBloc>(() => _i123.DrawerBloc(
          gh<_i66.GetNewsBoardUseCase>(),
          gh<_i115.GetUserInfoUseCase>(),
          gh<_i107.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i124.HomeWorkNotesBloc>(() => _i124.HomeWorkNotesBloc(
          gh<_i109.HomeWorkReportsUseCase>(),
          gh<_i115.GetUserInfoUseCase>(),
          gh<_i111.NotesReportsUseCase>(),
          gh<_i112.GetNoteReportDetails>(),
          gh<_i110.GetHomeWorkDetails>(),
        ));
    return this;
  }
}
