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
    as _i24;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i10;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i8;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i25;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i16;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i21;
import '../mash/data/remote/data_sources/profile_data_source.dart' as _i9;
import '../mash/data/repositories/academic_repository_impl.dart' as _i23;
import '../mash/data/repositories/auth_repository_impl.dart' as _i40;
import '../mash/data/repositories/chat_repository_impl.dart' as _i12;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i38;
import '../mash/data/repositories/notice_repository_impl.dart' as _i36;
import '../mash/data/repositories/profile_repository_impl.dart' as _i14;
import '../mash/domain/repositories/academic_repository.dart' as _i22;
import '../mash/domain/repositories/auth_repository.dart' as _i39;
import '../mash/domain/repositories/chat_repository.dart' as _i11;
import '../mash/domain/repositories/dash_board_repository.dart' as _i37;
import '../mash/domain/repositories/notice_repository.dart' as _i35;
import '../mash/domain/repositories/profile_repository.dart' as _i13;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i34;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i47;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i45;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i48;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i46;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i28;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i26;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i29;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i30;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i31;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i27;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i32;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i33;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i41;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i42;
import '../mash/domain/use_cases/profile/get_siblings_use_case.dart' as _i15;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i43;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i44;
import '../mash/presentation/manager/profile/profile_bloc.dart' as _i4;

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
    gh.factory<_i4.ProfileBloc>(() => _i4.ProfileBloc());
    gh.singleton<_i5.ApiProvider>(() => _i5.ApiProvider());
    gh.singleton<_i6.FirebaseDatabaseMethods>(
        () => _i6.FirebaseDatabaseMethods());
    gh.lazySingleton<_i7.HiveService>(() => _i7.HiveService());
    gh.lazySingleton<_i8.ChatDataSource>(() => _i8.ChatDataSourceImpl(
          gh<_i6.FirebaseDatabaseMethods>(),
          gh<_i7.HiveService>(),
        ));
    gh.lazySingleton<_i9.ProfileDataSource>(
        () => _i9.ProfileDataSourceImpl(gh<_i5.ApiProvider>()));
    gh.factory<_i10.AcademicRemoteDataSourceImpl>(
        () => _i10.AcademicRemoteDataSourceImpl(gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i11.ChatRepository>(
        () => _i12.ChatRepositoryImpl(gh<_i8.ChatDataSource>()));
    gh.lazySingleton<_i13.ProfileRepository>(
        () => _i14.ProfileRepositoryImpl(gh<_i9.ProfileDataSource>()));
    gh.factory<_i15.GetSiblingsUseCase>(
        () => _i15.GetSiblingsUseCase(gh<_i13.ProfileRepository>()));
    gh.lazySingleton<_i16.DashBoardRemoteDataSource>(() =>
        _i16.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i17.AuthLocalDataSource>(
        () => _i17.AuthLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i18.ConnectionChecker>(
        () => _i18.ConnectionCheckerImpl(gh<_i19.InternetConnectionChecker>()));
    gh.lazySingleton<_i20.AuthRemoteDataSource>(
        () => _i20.AuthRemoteDataSourceImpl(
              gh<_i5.ApiProvider>(),
              gh<_i6.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i21.NoticeRemoteDataSource>(() =>
        _i21.NoticeRemoteDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.lazySingleton<_i22.AcademicRepostory>(() =>
        _i23.AcademicRepositoryImple(gh<_i10.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i24.DashBoardLocalDataSource>(() =>
        _i24.DashBoardLocalDataSourceImpl(hiveService: gh<_i7.HiveService>()));
    gh.lazySingleton<_i25.DashBoardDataSource>(
        () => _i25.DashBoardDataSourceImpl(apiProvider: gh<_i5.ApiProvider>()));
    gh.singleton<_i26.GetChatRoomsUseCase>(
        () => _i26.GetChatRoomsUseCase(gh<_i11.ChatRepository>()));
    gh.singleton<_i27.SendMessageUserCase>(
        () => _i27.SendMessageUserCase(gh<_i11.ChatRepository>()));
    gh.factory<_i28.AddChatRoomUseCase>(
        () => _i28.AddChatRoomUseCase(gh<_i11.ChatRepository>()));
    gh.factory<_i29.GetChatUseCase>(
        () => _i29.GetChatUseCase(gh<_i11.ChatRepository>()));
    gh.factory<_i30.GetUserMembersUseCase>(
        () => _i30.GetUserMembersUseCase(gh<_i11.ChatRepository>()));
    gh.factory<_i31.GetUsersUseCase>(
        () => _i31.GetUsersUseCase(gh<_i11.ChatRepository>()));
    gh.factory<_i32.UpdateMessageUseCase>(
        () => _i32.UpdateMessageUseCase(gh<_i11.ChatRepository>()));
    gh.factory<_i33.UpdateRoomUseCase>(
        () => _i33.UpdateRoomUseCase(gh<_i11.ChatRepository>()));
    gh.factory<_i34.GetClassInforUseCase>(
        () => _i34.GetClassInforUseCase(gh<_i22.AcademicRepostory>()));
    gh.lazySingleton<_i35.NoticeRepository>(() => _i36.NoticeRepositoryImple(
        noticeRemoteDataSource: gh<_i21.NoticeRemoteDataSource>()));
    gh.lazySingleton<_i37.DashBoardRepository>(() => _i38.DashBoardRepoImpl(
          gh<_i16.DashBoardRemoteDataSource>(),
          gh<_i18.ConnectionChecker>(),
          gh<_i24.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i39.AuthRepository>(() => _i40.AuthRepositoryImpl(
          gh<_i18.ConnectionChecker>(),
          authRemoteDataSource: gh<_i20.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i17.AuthLocalDataSource>(),
        ));
    gh.factory<_i41.FetchWordThoughtUseCase>(
        () => _i41.FetchWordThoughtUseCase(gh<_i37.DashBoardRepository>()));
    gh.factory<_i42.GetNoticeBoardPopUp>(
        () => _i42.GetNoticeBoardPopUp(gh<_i35.NoticeRepository>()));
    gh.factory<_i43.DashboardBloc>(
        () => _i43.DashboardBloc(gh<_i41.FetchWordThoughtUseCase>()));
    gh.factory<_i44.NoticeBloc>(
        () => _i44.NoticeBloc(gh<_i42.GetNoticeBoardPopUp>()));
    gh.factory<_i45.LoginUseCase>(
        () => _i45.LoginUseCase(gh<_i39.AuthRepository>()));
    gh.singleton<_i46.SignOutUseCase>(
        () => _i46.SignOutUseCase(gh<_i39.AuthRepository>()));
    gh.lazySingleton<_i47.GetUserInfoUseCase>(
        () => _i47.GetUserInfoUseCase(gh<_i39.AuthRepository>()));
    gh.lazySingleton<_i48.SaveUserInfoUseCase>(
        () => _i48.SaveUserInfoUseCase(gh<_i39.AuthRepository>()));
    return this;
  }
}
