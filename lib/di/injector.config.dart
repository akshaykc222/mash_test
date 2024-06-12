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
    as _i52;

import '../core/api_provider.dart' as _i9;
import '../core/connection_checker.dart' as _i51;
import '../core/firebase_database.dart' as _i10;
import '../core/hive_service.dart' as _i13;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i50;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i58;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i56;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i14;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i45;
import '../mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i35;
import '../mash/data/remote/data_sources/home_remote_data_source.dart' as _i32;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i55;
import '../mash/data/remote/data_sources/id_request_datasource.dart' as _i26;
import '../mash/data/remote/data_sources/library_remote_data_source.dart'
    as _i20;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i57;
import '../mash/data/remote/data_sources/offline_exam_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/pament_remote_data_source.dart'
    as _i29;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i25;
import '../mash/data/remote/data_sources/teacher_datasource.dart' as _i19;
import '../mash/data/remote/data_sources/time_table_data_source.dart' as _i18;
import '../mash/data/remote/data_sources/vehicle_tracker_data_source.dart'
    as _i15;
import '../mash/data/repositories/academic_repository_impl.dart' as _i37;
import '../mash/data/repositories/auth_repository_impl.dart' as _i97;
import '../mash/data/repositories/chat_repository_impl.dart' as _i31;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i95;
import '../mash/data/repositories/drawer_menu_items_repository_impl.dart'
    as _i49;
import '../mash/data/repositories/home_repository_impl.dart' as _i54;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i91;
import '../mash/data/repositories/id_request_type_repo_impl.dart' as _i73;
import '../mash/data/repositories/library_repo_impl.dart' as _i39;
import '../mash/data/repositories/notice_repository_impl.dart' as _i99;
import '../mash/data/repositories/offline_exam_repo_impl.dart' as _i28;
import '../mash/data/repositories/payment_repo_impl.dart' as _i44;
import '../mash/data/repositories/profile_repository_impl.dart' as _i34;
import '../mash/data/repositories/teacher_repo_impl.dart' as _i24;
import '../mash/data/repositories/vehicle_tracker_repo_impl.dart' as _i17;
import '../mash/domain/repositories/academic_repository.dart' as _i36;
import '../mash/domain/repositories/auth_repository.dart' as _i96;
import '../mash/domain/repositories/chat_repository.dart' as _i30;
import '../mash/domain/repositories/dash_board_repository.dart' as _i94;
import '../mash/domain/repositories/drawer_menu_items_repository.dart' as _i48;
import '../mash/domain/repositories/home_repository.dart' as _i53;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i90;
import '../mash/domain/repositories/id_request_repository.dart' as _i72;
import '../mash/domain/repositories/library_repository.dart' as _i38;
import '../mash/domain/repositories/notice_repository.dart' as _i98;
import '../mash/domain/repositories/payment_repository.dart' as _i43;
import '../mash/domain/repositories/profile_repository.dart' as _i33;
import '../mash/domain/repositories/teacher_repository.dart' as _i23;
import '../mash/domain/repositories/time_table_repository.dart' as _i27;
import '../mash/domain/repositories/vehicle_tracker_repository.dart' as _i16;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i46;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i69;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i47;
import '../mash/domain/use_cases/academic/get_syllabus_terms_use_case.dart'
    as _i62;
import '../mash/domain/use_cases/academic/get_syllabus_use_case.dart' as _i61;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i112;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i114;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i113;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i111;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i81;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i79;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i83;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i84;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i85;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i80;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i82;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i86;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i104;
import '../mash/domain/use_cases/dashboard/get_digital_library_use_case.dart'
    as _i100;
import '../mash/domain/use_cases/dashboard/get_role_menu_usecase.dart' as _i105;
import '../mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart'
    as _i65;
import '../mash/domain/use_cases/home/get_add_on_usecase.dart' as _i71;
import '../mash/domain/use_cases/home/post_feed_use_case.dart' as _i70;
import '../mash/domain/use_cases/home_work_notes/get_home_work_report_details_use_case.dart'
    as _i109;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i107;
import '../mash/domain/use_cases/home_work_notes/get_notes_report_details_usecase.dart'
    as _i108;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i106;
import '../mash/domain/use_cases/id_request/id_request_type_usecase.dart'
    as _i103;
import '../mash/domain/use_cases/id_request/post_id_request.dart' as _i102;
import '../mash/domain/use_cases/library/physical_library_use_case.dart'
    as _i92;
import '../mash/domain/use_cases/library/required_pysical_library_data_usecase.dart'
    as _i93;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart'
    as _i110;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i101;
import '../mash/domain/use_cases/payment/get_payment_complete_response_usecase.dart'
    as _i76;
import '../mash/domain/use_cases/payment/get_payment_dashboard_usecase.dart'
    as _i74;
import '../mash/domain/use_cases/payment/get_payment_final_amount_usecase.dart'
    as _i63;
import '../mash/domain/use_cases/payment/get_payment_order_id_usecase.dart'
    as _i64;
import '../mash/domain/use_cases/payment/get_payment_token_usecase.dart'
    as _i77;
import '../mash/domain/use_cases/payment/payment_post_paymentstatus_update.dart'
    as _i75;
import '../mash/domain/use_cases/payment/save_payment_reponse_usecase.dart'
    as _i78;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i40;
import '../mash/domain/use_cases/profile/get_user_details_use_case.dart'
    as _i42;
import '../mash/domain/use_cases/profile/update_profile_use_case.dart' as _i41;
import '../mash/domain/use_cases/teacher/get_teacher_rating_usecase.dart'
    as _i67;
import '../mash/domain/use_cases/teacher/post_teacher_rating_usecase.dart'
    as _i68;
import '../mash/domain/use_cases/teacher/teacher_rating_questions_usecase.dart'
    as _i66;
import '../mash/domain/use_cases/time_table_usecase/daily_time_table_use_case.dart'
    as _i88;
import '../mash/domain/use_cases/time_table_usecase/offline_exam_terms_use_case.dart'
    as _i89;
import '../mash/domain/use_cases/time_table_usecase/offline_time_table_use_case.dart'
    as _i87;
import '../mash/domain/use_cases/vehicle_tracker_stops/get_vehicle_current_location.dart'
    as _i60;
import '../mash/domain/use_cases/vehicle_tracker_stops/vehicle_tracker_stops_usecase.dart'
    as _i59;
import '../mash/presentation/manager/bloc/academic_bloc/academic_bloc.dart'
    as _i118;
import '../mash/presentation/manager/bloc/auth_bloc/auth_bloc.dart' as _i7;
import '../mash/presentation/manager/bloc/chat_bloc/chat_bloc.dart' as _i4;
import '../mash/presentation/manager/bloc/dashboard_bloc/dashboard_bloc.dart'
    as _i121;
import '../mash/presentation/manager/bloc/drawer_bloc/drawer_bloc.dart'
    as _i119;
import '../mash/presentation/manager/bloc/home_bloc/home_bloc.dart' as _i117;
import '../mash/presentation/manager/bloc/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i120;
import '../mash/presentation/manager/bloc/id_request/id_request_bloc.dart'
    as _i5;
import '../mash/presentation/manager/bloc/library_bloc/library_bloc.dart'
    as _i6;
import '../mash/presentation/manager/bloc/notice_bloc/notice_bloc.dart'
    as _i116;
import '../mash/presentation/manager/bloc/payment/payment_bloc.dart' as _i115;
import '../mash/presentation/manager/bloc/profile_bloc/profile_bloc.dart'
    as _i8;
import '../mash/presentation/manager/bloc/teacher_bloc/teacher_bloc.dart'
    as _i3;
import '../mash/presentation/manager/bloc/time_table_bloc/time_table_bloc.dart'
    as _i11;
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
    gh.factory<_i3.TeacherBloc>(() => _i3.TeacherBloc());
    gh.factory<_i4.ChatBloc>(() => _i4.ChatBloc());
    gh.factory<_i5.IdRequestBloc>(() => _i5.IdRequestBloc());
    gh.factory<_i6.LibraryBloc>(() => _i6.LibraryBloc());
    gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc());
    gh.factory<_i8.ProfileBloc>(() => _i8.ProfileBloc());
    gh.singleton<_i9.ApiProvider>(() => _i9.ApiProvider());
    gh.singleton<_i10.FirebaseDatabaseMethods>(
        () => _i10.FirebaseDatabaseMethods());
    gh.lazySingleton<_i11.TimeTableBloc>(() => _i11.TimeTableBloc());
    gh.lazySingleton<_i12.VehicleTrackerStopsBloc>(
        () => _i12.VehicleTrackerStopsBloc());
    gh.lazySingleton<_i13.HiveService>(() => _i13.HiveService());
    gh.lazySingleton<_i14.ChatDataSource>(() => _i14.ChatDataSourceImpl(
          gh<_i10.FirebaseDatabaseMethods>(),
          gh<_i13.HiveService>(),
        ));
    gh.lazySingleton<_i15.VehicleTrackerDataSource>(
        () => _i15.VehicleTrackerImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i16.VehicleTrackerRepository>(
        () => _i17.VehicleTrackerRepoImpl(gh<_i15.VehicleTrackerDataSource>()));
    gh.lazySingleton<_i18.TimeTableDataSource>(
        () => _i18.TimeTableDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i19.TeacherDataSource>(
        () => _i19.TeacherDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i20.LibraryDataSource>(
        () => _i20.LibraryDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i21.AcademicRemoteDataSource>(
        () => _i21.AcademicRemoteDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i22.OfflineExamDataSource>(
        () => _i22.OfflineExamTermImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i23.TeacherRepository>(
        () => _i24.TeacherRepoImpl(gh<_i19.TeacherDataSource>()));
    gh.lazySingleton<_i25.ProfileDataSource>(
        () => _i25.ProfileDataSourceImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i26.IdRequestTypeDataSource>(
        () => _i26.IdRequestTypeImpl(gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i27.TimeTableRepository>(() => _i28.TimeTableRepoImpl(
          gh<_i22.OfflineExamDataSource>(),
          gh<_i18.TimeTableDataSource>(),
        ));
    gh.lazySingleton<_i29.PaymentRemoteDataSource>(() =>
        _i29.PaymentRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i30.ChatRepository>(
        () => _i31.ChatRepositoryImpl(gh<_i14.ChatDataSource>()));
    gh.lazySingleton<_i32.HomeRemoteDataSource>(() =>
        _i32.HomeRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i33.ProfileRepository>(
        () => _i34.ProfileRepositoryImpl(gh<_i25.ProfileDataSource>()));
    gh.lazySingleton<_i35.DrawerMenuItemsRemoteDataSource>(() =>
        _i35.DrawerMenuItemsRemoteDataSourceImpl(
            apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i36.AcademicRepository>(
        () => _i37.AcademicRepositoryImpl(gh<_i21.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i38.LibraryRepository>(
        () => _i39.LibraryRepoImpl(gh<_i20.LibraryDataSource>()));
    gh.factory<_i40.GetSiblingsUseCase>(
        () => _i40.GetSiblingsUseCase(gh<_i33.ProfileRepository>()));
    gh.singleton<_i41.UpdateProfileUseCase>(
        () => _i41.UpdateProfileUseCase(gh<_i33.ProfileRepository>()));
    gh.singleton<_i42.GetUserDetailsUseCase>(
        () => _i42.GetUserDetailsUseCase(gh<_i33.ProfileRepository>()));
    gh.lazySingleton<_i43.PaymentRepository>(() => _i44.PaymentRepoImpl(
        paymentRemoteDataSource: gh<_i29.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i45.DashBoardRemoteDataSource>(() =>
        _i45.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.factory<_i46.GetAcademicSubjectUseCase>(() =>
        _i46.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i36.AcademicRepository>()));
    gh.factory<_i47.GetDivisionDetailsUseCase>(() =>
        _i47.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i36.AcademicRepository>()));
    gh.lazySingleton<_i48.DrawerMenuItemsRepository>(() =>
        _i49.DrawerMenuItemsRepositoryImpl(
            drawerMenuItemsRemoteDataSource:
                gh<_i35.DrawerMenuItemsRemoteDataSource>()));
    gh.lazySingleton<_i50.AuthLocalDataSource>(() =>
        _i50.AuthLocalDataSourceImpl(hiveService: gh<_i13.HiveService>()));
    gh.lazySingleton<_i51.ConnectionChecker>(
        () => _i51.ConnectionCheckerImpl(gh<_i52.InternetConnectionChecker>()));
    gh.lazySingleton<_i53.HomeRepository>(() => _i54.HomeRepositoryImpl(
        homeRemoteDataSource: gh<_i32.HomeRemoteDataSource>()));
    gh.lazySingleton<_i55.HomeWorkNotesRemoteDataSource>(() =>
        _i55.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i56.AuthRemoteDataSource>(
        () => _i56.AuthRemoteDataSourceImpl(
              gh<_i9.ApiProvider>(),
              gh<_i10.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i57.NoticeRemoteDataSource>(() =>
        _i57.NoticeRemoteDataSourceImpl(apiProvider: gh<_i9.ApiProvider>()));
    gh.lazySingleton<_i58.DashBoardLocalDataSource>(() =>
        _i58.DashBoardLocalDataSourceImpl(hiveService: gh<_i13.HiveService>()));
    gh.lazySingleton<_i59.GetVehicleTrackerStopsUseCase>(() =>
        _i59.GetVehicleTrackerStopsUseCase(
            gh<_i16.VehicleTrackerRepository>()));
    gh.lazySingleton<_i60.GetVehicleCurrentLocation>(() =>
        _i60.GetVehicleCurrentLocation(gh<_i16.VehicleTrackerRepository>()));
    gh.lazySingleton<_i61.GetSyllabusUseCase>(() => _i61.GetSyllabusUseCase(
        academicRepository: gh<_i36.AcademicRepository>()));
    gh.lazySingleton<_i62.GetSyllabusTermsUseCase>(() =>
        _i62.GetSyllabusTermsUseCase(
            academicRepository: gh<_i36.AcademicRepository>()));
    gh.lazySingleton<_i63.GetPaymentFinalAmountUsecase>(() =>
        _i63.GetPaymentFinalAmountUsecase(
            paymentRepository: gh<_i43.PaymentRepository>()));
    gh.lazySingleton<_i64.GetPaymentOrderIdUsecase>(() =>
        _i64.GetPaymentOrderIdUsecase(
            paymentRepository: gh<_i43.PaymentRepository>()));
    gh.lazySingleton<_i65.GetNewsBoardUseCase>(() => _i65.GetNewsBoardUseCase(
        drawerMenuItemsRepository: gh<_i48.DrawerMenuItemsRepository>()));
    gh.lazySingleton<_i66.GetTeacherRatingQuestionsUseCase>(() =>
        _i66.GetTeacherRatingQuestionsUseCase(gh<_i23.TeacherRepository>()));
    gh.lazySingleton<_i67.GetTeacherRatingUseCase>(
        () => _i67.GetTeacherRatingUseCase(gh<_i23.TeacherRepository>()));
    gh.lazySingleton<_i68.PostTeacherRatingUseCase>(
        () => _i68.PostTeacherRatingUseCase(gh<_i23.TeacherRepository>()));
    gh.factory<_i69.GetClassInforUseCase>(
        () => _i69.GetClassInforUseCase(gh<_i36.AcademicRepository>()));
    gh.lazySingleton<_i70.PostfeedbackUsecase>(() =>
        _i70.PostfeedbackUsecase(homeRepository: gh<_i53.HomeRepository>()));
    gh.lazySingleton<_i71.GetAddOnUsecase>(
        () => _i71.GetAddOnUsecase(homeRepository: gh<_i53.HomeRepository>()));
    gh.lazySingleton<_i72.IdRequestRepository>(
        () => _i73.IdRequestRepoImpl(gh<_i26.IdRequestTypeDataSource>()));
    gh.factory<_i74.GetPaymentDashboardUsecase>(
        () => _i74.GetPaymentDashboardUsecase(gh<_i43.PaymentRepository>()));
    gh.factory<_i75.PostPaymentStatusUpdateUsecase>(() =>
        _i75.PostPaymentStatusUpdateUsecase(gh<_i43.PaymentRepository>()));
    gh.factory<_i76.GetPaymentCompleteResponseUsecase>(() =>
        _i76.GetPaymentCompleteResponseUsecase(gh<_i43.PaymentRepository>()));
    gh.factory<_i77.GetPaymentTokenUsecase>(
        () => _i77.GetPaymentTokenUsecase(gh<_i43.PaymentRepository>()));
    gh.factory<_i78.SavePaymentResponseUsecase>(
        () => _i78.SavePaymentResponseUsecase(gh<_i43.PaymentRepository>()));
    gh.singleton<_i79.GetChatRoomsUseCase>(
        () => _i79.GetChatRoomsUseCase(gh<_i30.ChatRepository>()));
    gh.singleton<_i80.SendMessageUserCase>(
        () => _i80.SendMessageUserCase(gh<_i30.ChatRepository>()));
    gh.factory<_i81.AddChatRoomUseCase>(
        () => _i81.AddChatRoomUseCase(gh<_i30.ChatRepository>()));
    gh.factory<_i82.UpdateMessageUseCase>(
        () => _i82.UpdateMessageUseCase(gh<_i30.ChatRepository>()));
    gh.factory<_i83.GetChatUseCase>(
        () => _i83.GetChatUseCase(gh<_i30.ChatRepository>()));
    gh.factory<_i84.GetUserMembersUseCase>(
        () => _i84.GetUserMembersUseCase(gh<_i30.ChatRepository>()));
    gh.factory<_i85.GetUsersUseCase>(
        () => _i85.GetUsersUseCase(gh<_i30.ChatRepository>()));
    gh.factory<_i86.UpdateRoomUseCase>(
        () => _i86.UpdateRoomUseCase(gh<_i30.ChatRepository>()));
    gh.lazySingleton<_i87.GetOfflineExamTimeTableUseCase>(() =>
        _i87.GetOfflineExamTimeTableUseCase(gh<_i27.TimeTableRepository>()));
    gh.lazySingleton<_i88.GetDailyTimeTableUseCase>(
        () => _i88.GetDailyTimeTableUseCase(gh<_i27.TimeTableRepository>()));
    gh.lazySingleton<_i89.GetOfflineExamTermsUseCase>(
        () => _i89.GetOfflineExamTermsUseCase(gh<_i27.TimeTableRepository>()));
    gh.lazySingleton<_i90.HomeWorkNotesRepository>(() =>
        _i91.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i55.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i92.GetPhysicalLibraryUseCase>(
        () => _i92.GetPhysicalLibraryUseCase(gh<_i38.LibraryRepository>()));
    gh.lazySingleton<_i93.GetRequiredPhysicalLibraryDataUseCase>(() =>
        _i93.GetRequiredPhysicalLibraryDataUseCase(
            gh<_i38.LibraryRepository>()));
    gh.lazySingleton<_i94.DashBoardRepository>(() => _i95.DashBoardRepoImpl(
          gh<_i45.DashBoardRemoteDataSource>(),
          gh<_i51.ConnectionChecker>(),
          gh<_i58.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i96.AuthRepository>(() => _i97.AuthRepositoryImpl(
          gh<_i51.ConnectionChecker>(),
          authRemoteDataSource: gh<_i56.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i50.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i98.NoticeRepository>(() => _i99.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i57.NoticeRemoteDataSource>()));
    gh.singleton<_i100.DigitalLibraryUseCase>(
        () => _i100.DigitalLibraryUseCase(gh<_i94.DashBoardRepository>()));
    gh.factory<_i101.GetAllNoticeUseCase>(() => _i101.GetAllNoticeUseCase(
        noticeRepository: gh<_i98.NoticeRepository>()));
    gh.lazySingleton<_i102.PostIdRequestUseCase>(
        () => _i102.PostIdRequestUseCase(gh<_i72.IdRequestRepository>()));
    gh.lazySingleton<_i103.GetIdRequestTypeUseCase>(
        () => _i103.GetIdRequestTypeUseCase(gh<_i72.IdRequestRepository>()));
    gh.factory<_i104.FetchWordThoughtUseCase>(
        () => _i104.FetchWordThoughtUseCase(gh<_i94.DashBoardRepository>()));
    gh.factory<_i105.GetRoleMenuUsecase>(
        () => _i105.GetRoleMenuUsecase(gh<_i94.DashBoardRepository>()));
    gh.lazySingleton<_i106.NotesReportsUseCase>(() => _i106.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i90.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i107.HomeWorkReportsUseCase>(() =>
        _i107.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i90.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i108.GetNoteReportDetails>(() =>
        _i108.GetNoteReportDetails(
            homeWorkNotesRepository: gh<_i90.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i109.GetHomeWorkDetails>(() => _i109.GetHomeWorkDetails(
        homeWorkNotesRepository: gh<_i90.HomeWorkNotesRepository>()));
    gh.factory<_i110.GetNoticeBoardPopUp>(
        () => _i110.GetNoticeBoardPopUp(gh<_i98.NoticeRepository>()));
    gh.singleton<_i111.SignOutUseCase>(
        () => _i111.SignOutUseCase(gh<_i96.AuthRepository>()));
    gh.lazySingleton<_i112.GetUserInfoUseCase>(
        () => _i112.GetUserInfoUseCase(gh<_i96.AuthRepository>()));
    gh.lazySingleton<_i113.SaveUserInfoUseCase>(
        () => _i113.SaveUserInfoUseCase(gh<_i96.AuthRepository>()));
    gh.lazySingleton<_i114.LoginUseCase>(
        () => _i114.LoginUseCase(gh<_i96.AuthRepository>()));
    gh.factory<_i115.PaymentBloc>(() => _i115.PaymentBloc(
          gh<_i74.GetPaymentDashboardUsecase>(),
          gh<_i112.GetUserInfoUseCase>(),
          gh<_i63.GetPaymentFinalAmountUsecase>(),
          gh<_i64.GetPaymentOrderIdUsecase>(),
          gh<_i77.GetPaymentTokenUsecase>(),
          gh<_i76.GetPaymentCompleteResponseUsecase>(),
          gh<_i75.PostPaymentStatusUpdateUsecase>(),
          gh<_i78.SavePaymentResponseUsecase>(),
        ));
    gh.factory<_i116.NoticeBloc>(() => _i116.NoticeBloc(
          gh<_i110.GetNoticeBoardPopUp>(),
          gh<_i101.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i117.HomeBloc>(() => _i117.HomeBloc(
          gh<_i71.GetAddOnUsecase>(),
          gh<_i112.GetUserInfoUseCase>(),
          gh<_i70.PostfeedbackUsecase>(),
        ));
    gh.factory<_i118.AcademicBloc>(() => _i118.AcademicBloc(
          gh<_i47.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i69.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i112.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i46.GetAcademicSubjectUseCase>(),
          getSyllabusUseCase: gh<_i61.GetSyllabusUseCase>(),
          getSyllabusTermsUseCase: gh<_i62.GetSyllabusTermsUseCase>(),
        ));
    gh.factory<_i119.DrawerBloc>(() => _i119.DrawerBloc(
          gh<_i65.GetNewsBoardUseCase>(),
          gh<_i112.GetUserInfoUseCase>(),
          gh<_i105.GetRoleMenuUsecase>(),
        ));
    gh.factory<_i120.HomeWorkNotesBloc>(() => _i120.HomeWorkNotesBloc(
          gh<_i107.HomeWorkReportsUseCase>(),
          gh<_i112.GetUserInfoUseCase>(),
          gh<_i106.NotesReportsUseCase>(),
          gh<_i108.GetNoteReportDetails>(),
          gh<_i109.GetHomeWorkDetails>(),
        ));
    gh.factory<_i121.DashboardBloc>(() => _i121.DashboardBloc(
          gh<_i104.FetchWordThoughtUseCase>(),
          gh<_i112.GetUserInfoUseCase>(),
        ));
    return this;
  }
}
