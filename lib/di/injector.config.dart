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
    as _i19;

import '../core/api_provider.dart' as _i5;
import '../core/connection_checker.dart' as _i18;
import '../core/firebase_database.dart' as _i6;
import '../core/hive_service.dart' as _i7;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i17;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i23;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i9;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i21;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i8;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i24;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i14;
import '../mash/data/remote/data_sources/home_work_notes_data_source.dart'
    as _i20;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i22;
import '../mash/data/repositories/academic_repository_impl.dart' as _i13;
import '../mash/data/repositories/auth_repository_impl.dart' as _i39;
import '../mash/data/repositories/chat_repository_impl.dart' as _i11;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i37;
import '../mash/data/repositories/home_work_repository_impl.dart' as _i35;
import '../mash/data/repositories/notice_repository_impl.dart' as _i41;
import '../mash/domain/repositories/academic_repository.dart' as _i12;
import '../mash/domain/repositories/auth_repository.dart' as _i38;
import '../mash/domain/repositories/chat_repository.dart' as _i10;
import '../mash/domain/repositories/dash_board_repository.dart' as _i36;
import '../mash/domain/repositories/home_work_notes_repository.dart' as _i34;
import '../mash/domain/repositories/notice_repository.dart' as _i40;
import '../mash/domain/use_cases/academic/get_academic_subject_usecase.dart'
    as _i15;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i25;
import '../mash/domain/use_cases/academic/get_division_details_use_case.dart'
    as _i16;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i49;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i51;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i50;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i48;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i28;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i26;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i30;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i31;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i32;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i27;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i29;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i33;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i43;
import '../mash/domain/use_cases/home_work_notes/get_home_work_reports_use_case.dart'
    as _i45;
import '../mash/domain/use_cases/home_work_notes/get_notes_reports_use_case_report.dart'
    as _i44;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i46;
import '../mash/domain/use_cases/notice/notice_all_usecase.dart' as _i42;
import '../mash/presentation/manager/academic_bloc/academic_bloc.dart' as _i54;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i4;
import '../mash/presentation/manager/chat_bloc/chat_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i47;
import '../mash/presentation/manager/home_work_notes_bloc/home_work_notes_bloc.dart'
    as _i53;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i52;

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
    gh.factory<_i3.ChatBloc>(() => _i3.ChatBloc());
    gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
    gh.singleton<_i5.ApiProvider>(() => _i5.ApiProvider());
    gh.singleton<_i6.FirebaseDatabaseMethods>(
        () => _i6.FirebaseDatabaseMethods());
    gh.lazySingleton<_i7.HiveService>(() => _i7.HiveService());
    gh.lazySingleton<_i8.ChatDataSource>(() => _i8.ChatDataSourceImpl(
          gh<_i6.FirebaseDatabaseMethods>(),
          gh<_i7.HiveService>(),
        ));
    gh.lazySingleton<_i9.AcademicRemoteDataSource>(
        () => _i9.AcademicRemoteDataSourceImpl(gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i10.ChatRepository>(
        () => _i11.ChatRepositoryImpl(gh<_i8.ChatDataSource>()));
    gh.lazySingleton<_i12.AcademicRepository>(
        () => _i13.AcademicRepositoryImpl(gh<_i9.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i14.DashBoardRemoteDataSource>(() =>
        _i14.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.factory<_i15.GetAcademicSubjectUseCase>(() =>
        _i15.GetAcademicSubjectUseCase(
            academicRepostory: gh<_i12.AcademicRepository>()));
    gh.factory<_i16.GetDivisionDetailsUseCase>(() =>
        _i16.GetDivisionDetailsUseCase(
            academicRepostory: gh<_i12.AcademicRepository>()));
    gh.lazySingleton<_i17.AuthLocalDataSource>(
        () => _i17.AuthLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i18.ConnectionChecker>(
        () => _i18.ConnectionCheckerImpl(gh<_i19.InternetConnectionChecker>()));
    gh.lazySingleton<_i20.HomeWorkNotesRemoteDataSource>(() =>
        _i20.HomeWorkRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i21.AuthRemoteDataSource>(
        () => _i21.AuthRemoteDataSourceImpl(
              gh<_i5.ApiProvider>(),
              gh<_i6.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i22.NoticeRemoteDataSource>(() =>
        _i22.NoticeRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i23.DashBoardLocalDataSource>(() =>
        _i23.DashBoardLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i24.DashBoardDataSource>(
        () => _i24.DashBoardDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.factory<_i25.GetClassInforUseCase>(
        () => _i25.GetClassInforUseCase(gh<_i12.AcademicRepository>()));
    gh.singleton<_i26.GetChatRoomsUseCase>(
        () => _i26.GetChatRoomsUseCase(gh<_i10.ChatRepository>()));
    gh.singleton<_i27.SendMessageUserCase>(
        () => _i27.SendMessageUserCase(gh<_i10.ChatRepository>()));
    gh.factory<_i28.AddChatRoomUseCase>(
        () => _i28.AddChatRoomUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i29.UpdateMessageUseCase>(
        () => _i29.UpdateMessageUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i30.GetChatUseCase>(
        () => _i30.GetChatUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i31.GetUserMembersUseCase>(
        () => _i31.GetUserMembersUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i32.GetUsersUseCase>(
        () => _i32.GetUsersUseCase(gh<_i10.ChatRepository>()));
    gh.factory<_i33.UpdateRoomUseCase>(
        () => _i33.UpdateRoomUseCase(gh<_i10.ChatRepository>()));
    gh.lazySingleton<_i34.HomeWorkNotesRepository>(() =>
        _i35.HomeWorkNotesReportRepositoryImpl(
            homeWorkNotesRemoteDataSource:
                gh<_i20.HomeWorkNotesRemoteDataSource>()));
    gh.lazySingleton<_i36.DashBoardRepository>(() => _i37.DashBoardRepoImpl(
          gh<_i14.DashBoardRemoteDataSource>(),
          gh<_i18.ConnectionChecker>(),
          gh<_i23.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i38.AuthRepository>(() => _i39.AuthRepositoryImpl(
          gh<_i18.ConnectionChecker>(),
          authRemoteDataSource: gh<_i21.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i17.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i40.NoticeRepository>(() => _i41.NoticeRepositoryImpl(
        noticeRemoteDataSource: gh<_i22.NoticeRemoteDataSource>()));
    gh.factory<_i42.GetAllNoticeUseCase>(() => _i42.GetAllNoticeUseCase(
        noticeRepository: gh<_i40.NoticeRepository>()));
    gh.factory<_i43.FetchWordThoughtUseCase>(
        () => _i43.FetchWordThoughtUseCase(gh<_i36.DashBoardRepository>()));
    gh.lazySingleton<_i44.NotesReportsUseCase>(() => _i44.NotesReportsUseCase(
        homeWorkNotesRepository: gh<_i34.HomeWorkNotesRepository>()));
    gh.lazySingleton<_i45.HomeWorkReportsUseCase>(() =>
        _i45.HomeWorkReportsUseCase(
            homeWorkNotesRepository: gh<_i34.HomeWorkNotesRepository>()));
    gh.factory<_i46.GetNoticeBoardPopUp>(
        () => _i46.GetNoticeBoardPopUp(gh<_i40.NoticeRepository>()));
    gh.factory<_i47.DashboardBloc>(
        () => _i47.DashboardBloc(gh<_i43.FetchWordThoughtUseCase>()));
    gh.singleton<_i48.SignOutUseCase>(
        () => _i48.SignOutUseCase(gh<_i38.AuthRepository>()));
    gh.lazySingleton<_i49.GetUserInfoUseCase>(
        () => _i49.GetUserInfoUseCase(gh<_i38.AuthRepository>()));
    gh.lazySingleton<_i50.SaveUserInfoUseCase>(
        () => _i50.SaveUserInfoUseCase(gh<_i38.AuthRepository>()));
    gh.lazySingleton<_i51.LoginUseCase>(
        () => _i51.LoginUseCase(gh<_i38.AuthRepository>()));
    gh.factory<_i52.NoticeBloc>(() => _i52.NoticeBloc(
          gh<_i46.GetNoticeBoardPopUp>(),
          gh<_i42.GetAllNoticeUseCase>(),
        ));
    gh.factory<_i53.HomeWorkNotesBloc>(() => _i53.HomeWorkNotesBloc(
          gh<_i45.HomeWorkReportsUseCase>(),
          gh<_i49.GetUserInfoUseCase>(),
          gh<_i44.NotesReportsUseCase>(),
        ));
    gh.factory<_i54.AcademicBloc>(() => _i54.AcademicBloc(
          gh<_i16.GetDivisionDetailsUseCase>(),
          getClassInforUseCase: gh<_i25.GetClassInforUseCase>(),
          getUserInfoUseCase: gh<_i49.GetUserInfoUseCase>(),
          getAcademicSubjectUseCase: gh<_i15.GetAcademicSubjectUseCase>(),
        ));
    return this;
  }
}
