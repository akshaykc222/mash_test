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
    as _i14;

import '../core/api_provider.dart' as _i4;
import '../core/connection_checker.dart' as _i13;
import '../core/firebase_database.dart' as _i5;
import '../core/hive_service.dart' as _i6;
import '../mash/data/local/data_sources/auth_local_data_source.dart' as _i12;
import '../mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i19;
import '../mash/data/remote/data_sources/academic_remote_data_source.dart'
    as _i8;
import '../mash/data/remote/data_sources/auth_remote_data_source.dart' as _i15;
import '../mash/data/remote/data_sources/chat_data_soruce.dart' as _i7;
import '../mash/data/remote/data_sources/dashboard_data_source.dart' as _i20;
import '../mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i11;
import '../mash/data/remote/data_sources/notice_remote_data_source.dart'
    as _i16;
import '../mash/data/repositories/academic_repository_impl.dart' as _i18;
import '../mash/data/repositories/auth_repository_impl.dart' as _i35;
import '../mash/data/repositories/chat_repository_impl.dart' as _i10;
import '../mash/data/repositories/dash_board_repository_impl.dart' as _i33;
import '../mash/data/repositories/notice_repository_impl.dart' as _i31;
import '../mash/domain/repositories/academic_repository.dart' as _i17;
import '../mash/domain/repositories/auth_repository.dart' as _i34;
import '../mash/domain/repositories/chat_repository.dart' as _i9;
import '../mash/domain/repositories/dash_board_repository.dart' as _i32;
import '../mash/domain/repositories/notice_repository.dart' as _i30;
import '../mash/domain/use_cases/academic/get_class_details_usecase.dart'
    as _i29;
import '../mash/domain/use_cases/auth/get_user_info_use_case.dart' as _i42;
import '../mash/domain/use_cases/auth/login_use_case.dart' as _i40;
import '../mash/domain/use_cases/auth/save_user_info_use_case.dart' as _i43;
import '../mash/domain/use_cases/auth/sign_out_use_case.dart' as _i41;
import '../mash/domain/use_cases/chat/add_chat_room_use_case.dart' as _i23;
import '../mash/domain/use_cases/chat/get_chat_rooms_use_case.dart' as _i21;
import '../mash/domain/use_cases/chat/get_chat_use_case.dart' as _i24;
import '../mash/domain/use_cases/chat/get_group_members_use_case.dart' as _i25;
import '../mash/domain/use_cases/chat/get_users_use_case.dart' as _i26;
import '../mash/domain/use_cases/chat/send_message_use_case.dart' as _i22;
import '../mash/domain/use_cases/chat/update_message_use_case.dart' as _i27;
import '../mash/domain/use_cases/chat/update_room_use_case.dart' as _i28;
import '../mash/domain/use_cases/dashboard/fetch_word_thought_usecase.dart'
    as _i36;
import '../mash/domain/use_cases/notice/get_notice_pop_up_usecase.dart' as _i37;
import '../mash/presentation/manager/auth_bloc/auth_bloc.dart' as _i3;
import '../mash/presentation/manager/dashboard_bloc/dashboard_bloc.dart'
    as _i38;
import '../mash/presentation/manager/notice_bloc/notice_bloc.dart' as _i39;

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
    gh.singleton<_i5.FirebaseDatabaseMethods>(
        () => _i5.FirebaseDatabaseMethods());
    gh.lazySingleton<_i6.HiveService>(() => _i6.HiveService());
    gh.lazySingleton<_i7.ChatDataSource>(() => _i7.ChatDataSourceImpl(
          gh<_i5.FirebaseDatabaseMethods>(),
          gh<_i6.HiveService>(),
        ));
    gh.factory<_i8.AcademicRemoteDataSourceImpl>(
        () => _i8.AcademicRemoteDataSourceImpl(gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i9.ChatRepository>(
        () => _i10.ChatRepositoryImpl(gh<_i7.ChatDataSource>()));
    gh.lazySingleton<_i11.DashBoardRemoteDataSource>(() =>
        _i11.DashBoardRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i12.AuthLocalDataSource>(
        () => _i12.AuthLocalDataSourceImpl(hiveService: gh<_i6.HiveService>()));
    gh.lazySingleton<_i13.ConnectionChecker>(
        () => _i13.ConnectionCheckerImpl(gh<_i14.InternetConnectionChecker>()));
    gh.lazySingleton<_i15.AuthRemoteDataSource>(
        () => _i15.AuthRemoteDataSourceImpl(
              gh<_i4.ApiProvider>(),
              gh<_i5.FirebaseDatabaseMethods>(),
            ));
    gh.lazySingleton<_i16.NoticeRemoteDataSource>(() =>
        _i16.NoticeRemoteDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.lazySingleton<_i17.AcademicRepostory>(
        () => _i18.AcademicRepositoryImple(gh<_i8.AcademicRemoteDataSource>()));
    gh.lazySingleton<_i19.DashBoardLocalDataSource>(() =>
        _i19.DashBoardLocalDataSourceImpl(hiveService: gh<_i6.HiveService>()));
    gh.lazySingleton<_i20.DashBoardDataSource>(
        () => _i20.DashBoardDataSourceImpl(apiProvider: gh<_i4.ApiProvider>()));
    gh.singleton<_i21.GetChatRoomsUseCase>(
        () => _i21.GetChatRoomsUseCase(gh<_i9.ChatRepository>()));
    gh.singleton<_i22.SendMessageUserCase>(
        () => _i22.SendMessageUserCase(gh<_i9.ChatRepository>()));
    gh.factory<_i23.AddChatRoomUseCase>(
        () => _i23.AddChatRoomUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i24.GetChatUseCase>(
        () => _i24.GetChatUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i25.GetUserMembersUseCase>(
        () => _i25.GetUserMembersUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i26.GetUsersUseCase>(
        () => _i26.GetUsersUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i27.UpdateMessageUseCase>(
        () => _i27.UpdateMessageUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i28.UpdateRoomUseCase>(
        () => _i28.UpdateRoomUseCase(gh<_i9.ChatRepository>()));
    gh.factory<_i29.GetClassInforUseCase>(
        () => _i29.GetClassInforUseCase(gh<_i17.AcademicRepostory>()));
    gh.lazySingleton<_i30.NoticeRepository>(() => _i31.NoticeRepositoryImple(
        noticeRemoteDataSource: gh<_i16.NoticeRemoteDataSource>()));
    gh.lazySingleton<_i32.DashBoardRepository>(() => _i33.DashBoardRepoImpl(
          gh<_i11.DashBoardRemoteDataSource>(),
          gh<_i13.ConnectionChecker>(),
          gh<_i19.DashBoardLocalDataSource>(),
        ));
    gh.lazySingleton<_i34.AuthRepository>(() => _i35.AuthRepositoryImpl(
          gh<_i13.ConnectionChecker>(),
          authRemoteDataSource: gh<_i15.AuthRemoteDataSource>(),
          authLocalDataSource: gh<_i12.AuthLocalDataSource>(),
        ));
    gh.factory<_i36.FetchWordThoughtUseCase>(
        () => _i36.FetchWordThoughtUseCase(gh<_i32.DashBoardRepository>()));
    gh.factory<_i37.GetNoticeBoardPopUp>(
        () => _i37.GetNoticeBoardPopUp(gh<_i30.NoticeRepository>()));
    gh.factory<_i38.DashboardBloc>(
        () => _i38.DashboardBloc(gh<_i36.FetchWordThoughtUseCase>()));
    gh.factory<_i39.NoticeBloc>(
        () => _i39.NoticeBloc(gh<_i37.GetNoticeBoardPopUp>()));
    gh.factory<_i40.LoginUseCase>(
        () => _i40.LoginUseCase(gh<_i34.AuthRepository>()));
    gh.singleton<_i41.SignOutUseCase>(
        () => _i41.SignOutUseCase(gh<_i34.AuthRepository>()));
    gh.lazySingleton<_i42.GetUserInfoUseCase>(
        () => _i42.GetUserInfoUseCase(gh<_i34.AuthRepository>()));
    gh.lazySingleton<_i43.SaveUserInfoUseCase>(
        () => _i43.SaveUserInfoUseCase(gh<_i34.AuthRepository>()));
    return this;
  }
}
