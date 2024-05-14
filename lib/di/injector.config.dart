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
    as _i18;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i17;
import '../core/hive_service.dart' as _i5;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i16;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i8;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i6;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i7;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i22;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i13;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i19;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i20;
import '../mash/data/repositories/academic_repository_impl.dart' as _i12;
import '../mash/data/repositories/auth_repository_impl.dart' as _i35;
import '../mash/data/repositories/chat_repository_impl.dart' as _i10;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i33;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i31;
import '../mash/data/repositories/notice_repository_impl.dart' as _i37;
import '../mash/domain/repositories/academic_repository.dart' as _i11;
import '../mash/domain/repositories/auth_repository.dart' as _i34;
import '../mash/domain/repositories/chat_repository.dart' as _i9;
import '../mash/domain/repositories/dash_board_repository.dart' as _i32;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i30;
import '../mash/domain/repositories/notice_repository.dart' as _i36;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i14;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i23;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i15;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i45;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i47;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i46;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i44;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i26;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i24;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i27;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i28;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i29;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i25;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i39;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
<<<<<<< Updated upstream
    as _i31;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i32;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i33;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i29;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i41;
=======
    as _i41;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i40;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i42;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i38;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i50;
>>>>>>> Stashed changes
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i43;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i49;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i48;

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
    gh.singleton<_i4.ApiProvider>(() => _i4.ApiProvider());
    gh.lazySingleton<_i5.HiveService>(() => _i5.HiveService());
    gh.lazySingleton<_i6.AuthRemoteDataSource>(
        () => _i6.AuthRemoteDataSourceImpl(
              gh<_i4.ApiProvider>(),
              gh<InvalidType>(),
            ));
    gh.lazySingleton<_i7.ChatDataSource>(() => _i7.ChatDataSourceImpl(
          gh<InvalidType>(),
          gh<_i5.HiveService>(),
        ));
    gh.lazySingleton<_i8.AcademicRemoteDataSource>(
        () => _i8.AcademicRemoteDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i9.ChatRepository>(
        () => _i10.ChatRepositoryImpl(gh<_i7.ChatDataSource>()));
    gh.lazySingleton<_i11.AcademicRepository>(
        () => _i12.AcademicRepositoryImpl(gh<_i8.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i13.DashBoardRemoteDataSource>(() =>
        _i13.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.factory<_i14.GetAcademicSubjectUseCase>(() =>
        _i14.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i11.AcademicRepository>()));
    gh.factory<_i15.GetDivisionDetailsUseCase>(() =>
        _i15.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i11.AcademicRepository>()));
    gh.lazySingleton<_i16.AuthLocalDataSource>(
        () => _i16.AuthLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i17.ConnectionChecker>(
        () => _i17.ConnectionCheckerImpl(gh<_i18.InternetConnectionChecker>()));
    gh.lazySingleton<_i19.HomeWorkNotesRemoteDataSource>(() =>
        _i19.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i20.NoticeRemoteDataSource>(() =>
        _i20.NoticeRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i21.DashBoardLocalDataSource>(() =>
        _i21.DashBoardLocalDataSourceImpl(hiveService: gh<_i5.HiveService>()));
    gh.lazySingleton<_i22.DashBoardDataSource>(
        () => _i22.DashBoardDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.factory<_i23.GetClassInforUseCase>(
        () => _i23.GetClassInforUseCase(gh<_i11.AcademicRepository>()));
    gh.singleton<_i24.GetChatRoomsUseCase>(
        () => _i24.GetChatRoomsUseCase(gh<_i9.ChatRepository>()));
    gh.singleton<_i25.SendMessageUserCase>(
        () => _i25.SendMessageUserCase(gh<_i9.ChatRepository>()));
    gh.factory<_i26.AddChatRoomUseCase>(
        () => _i26.AddChatRoomUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i27.GetChatUseCase>(
        () => _i27.GetChatUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i28.GetUserMembersUseCase>(
        () => _i28.GetUserMembersUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i29.GetUsersUseCase>(
        () => _i29.GetUsersUseCase(gh<_i9.ChatRepository>()));
    gh.lazySingleton<_i30.HomeWorkNotesRepository>(() =>
        _i31.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i19.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i32.DashBoardRepository>(() => _i33.DashBoardRepoImpl(
          gh<_i13.DashBoardRemoteDataSource>(),
          gh<_i17.ConnectionChecker>(),
          gh<_i21.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i34.AuthRepository>(() => _i35.AuthRepositoryImpl(
          gh<_i17.ConnectionChecker>(),
          authRemoteDataSource: gh<_i6.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i16.AuthLocalDataSource>(),
        ));
<<<<<<< Updated upstream
    gh.lazySingleton<_i27.NoticeRepository>(() => _i28.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i17.NoticeRemoteDataSource>()));
    gh.factory<_i29.GetAllNoticeUseCase>(() => _i29.GetAllNoticeUseCase(
        noticeRepository: gh<_i27.NoticeRepository>()));
    gh.factory<_i30.FetchWordThoughtUseCase>(
        () => _i30.FetchWordThoughtUseCase(gh<_i23.DashBoardRepository>()));
    gh.lazySingleton<_i31.HomeWorkReportsUseCase>(() =>
        _i31.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i21.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i32.NotesReportsUseCase>(() => _i32.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i21.HomeWorkNotesRepository>()));
    gh.factory<_i33.GetNoticeBoardPopUp>(
        () => _i33.GetNoticeBoardPopUp(gh<_i27.NoticeRepository>()));
    gh.factory<_i34.DashboardBloc>(
        () => _i34.DashboardBloc(gh<_i30.FetchWordThoughtUseCase>()));
    gh.singleton<_i35.SignOutUseCase>(
        () => _i35.SignOutUseCase(gh<_i25.AuthRepository>()));
    gh.lazySingleton<_i36.GetUserInfoUseCase>(
        () => _i36.GetUserInfoUseCase(gh<_i25.AuthRepository>()));
    gh.lazySingleton<_i37.SaveUserInfoUseCase>(
        () => _i37.SaveUserInfoUseCase(gh<_i25.AuthRepository>()));
    gh.lazySingleton<_i38.LoginUseCase>(
        () => _i38.LoginUseCase(gh<_i25.AuthRepository>()));
    gh.factory<_i39.NoticeBloc>(() => _i39.NoticeBloc(
          gh<_i33.GetNoticeBoardPopUp>(),
          gh<_i29.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i40.HomeWorkNotesBloc>(() => _i40.HomeWorkNotesBloc(
          gh<_i31.HomeWorkReportsUseCase>(),
          gh<_i36.GetUserInfoUseCase>(),
          gh<_i32.NotesReportsUseCase>(),
=======
    gh.lazySingleton<_i36.NoticeRepository>(() => _i37.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i20.NoticeRemoteDataSource>()));
    gh.factory<_i38.GetAllNoticeUseCase>(() => _i38.GetAllNoticeUseCase(
        noticeRepository: gh<_i36.NoticeRepository>()));
    gh.factory<_i39.FetchWordThoughtUseCase>(
        () => _i39.FetchWordThoughtUseCase(gh<_i32.DashBoardRepository>()));
    gh.lazySingleton<_i40.NotesReportsUseCase>(() => _i40.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i30.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i41.HomeWorkReportsUseCase>(() =>
        _i41.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i30.HomeWorkNotesRepository>()));
    gh.factory<_i42.GetNoticeBoardPopUp>(
        () => _i42.GetNoticeBoardPopUp(gh<_i36.NoticeRepository>()));
    gh.factory<_i43.DashboardBloc>(
        () => _i43.DashboardBloc(gh<_i39.FetchWordThoughtUseCase>()));
    gh.singleton<_i44.SignOutUseCase>(
        () => _i44.SignOutUseCase(gh<_i34.AuthRepository>()));
    gh.lazySingleton<_i45.GetUserInfoUseCase>(
        () => _i45.GetUserInfoUseCase(gh<_i34.AuthRepository>()));
    gh.lazySingleton<_i46.SaveUserInfoUseCase>(
        () => _i46.SaveUserInfoUseCase(gh<_i34.AuthRepository>()));
    gh.lazySingleton<_i47.LoginUseCase>(
        () => _i47.LoginUseCase(gh<_i34.AuthRepository>()));
    gh.factory<_i48.NoticeBloc>(() => _i48.NoticeBloc(
          gh<_i42.GetNoticeBoardPopUp>(),
          gh<_i38.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i49.HomeWorkNotesBloc>(() => _i49.HomeWorkNotesBloc(
          gh<_i41.HomeWorkReportsUseCase>(),
          gh<_i45.GetUserInfoUseCase>(),
          gh<_i40.NotesReportsUseCase>(),
>>>>>>> Stashed changes
        ));
    gh.factory<_i50.AcademicBloc>(() => _i50.AcademicBloc(
          gh<_i15.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i23.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i45.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i14.GetAcademicSubjectUseCase>(),
        ));
    return this;
  }
}
