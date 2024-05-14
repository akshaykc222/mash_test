// Mocks generated by Mockito 5.4.4 from annotations
// in mash/test/mash/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:dio/dio.dart' as _i8;
import 'package:hive/hive.dart' as _i3;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i2;
import 'package:mash/core/api_provider.dart' as _i7;
import 'package:mash/core/connection_checker.dart' as _i9;
import 'package:mash/core/hive_service.dart' as _i10;
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart'
    as _i15;
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart'
    as _i20;
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart' as _i21;
import 'package:mash/mash/data/local/models/login_local_model.dart' as _i13;
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart'
    as _i14;
import 'package:mash/mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i16;
import 'package:mash/mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart'
    as _i25;
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart'
    as _i5;
import 'package:mash/mash/data/remote/models/drawer_menu_items/news_board_model.dart'
    as _i26;
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart'
    as _i17;
import 'package:mash/mash/data/remote/models/request/login_request.dart'
    as _i12;
import 'package:mash/mash/data/remote/models/request/news_board_request.dart'
    as _i24;
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart'
    as _i4;
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart'
    as _i19;
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart'
    as _i23;
import 'package:mash/mash/domain/repositories/auth_repository.dart' as _i11;
import 'package:mash/mash/domain/repositories/dash_board_repository.dart'
    as _i18;
import 'package:mash/mash/domain/repositories/drawer_menu_items_repository.dart'
    as _i22;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDuration_0 extends _i1.SmartFake implements Duration {
  _FakeDuration_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAddressCheckResult_1 extends _i1.SmartFake
    implements _i2.AddressCheckResult {
  _FakeAddressCheckResult_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBox_2<E> extends _i1.SmartFake implements _i3.Box<E> {
  _FakeBox_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthResponseEntity_3 extends _i1.SmartFake
    implements _i4.AuthResponseEntity {
  _FakeAuthResponseEntity_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWordThoughtsModel_4 extends _i1.SmartFake
    implements _i5.WordThoughtsModel {
  _FakeWordThoughtsModel_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [InternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnectionChecker extends _i1.Mock
    implements _i2.InternetConnectionChecker {
  MockInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Duration get checkInterval => (super.noSuchMethod(
        Invocation.getter(#checkInterval),
        returnValue: _FakeDuration_0(
          this,
          Invocation.getter(#checkInterval),
        ),
      ) as Duration);

  @override
  Duration get checkTimeout => (super.noSuchMethod(
        Invocation.getter(#checkTimeout),
        returnValue: _FakeDuration_0(
          this,
          Invocation.getter(#checkTimeout),
        ),
      ) as Duration);

  @override
  List<_i2.AddressCheckOptions> get addresses => (super.noSuchMethod(
        Invocation.getter(#addresses),
        returnValue: <_i2.AddressCheckOptions>[],
      ) as List<_i2.AddressCheckOptions>);

  @override
  set addresses(List<_i2.AddressCheckOptions>? value) => super.noSuchMethod(
        Invocation.setter(
          #addresses,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<bool> get hasConnection => (super.noSuchMethod(
        Invocation.getter(#hasConnection),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Future<_i2.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(
        Invocation.getter(#connectionStatus),
        returnValue: _i6.Future<_i2.InternetConnectionStatus>.value(
            _i2.InternetConnectionStatus.connected),
      ) as _i6.Future<_i2.InternetConnectionStatus>);

  @override
  _i6.Stream<_i2.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i6.Stream<_i2.InternetConnectionStatus>.empty(),
      ) as _i6.Stream<_i2.InternetConnectionStatus>);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isActivelyChecking => (super.noSuchMethod(
        Invocation.getter(#isActivelyChecking),
        returnValue: false,
      ) as bool);

  @override
  _i6.Future<_i2.AddressCheckResult> isHostReachable(
          _i2.AddressCheckOptions? options) =>
      (super.noSuchMethod(
        Invocation.method(
          #isHostReachable,
          [options],
        ),
        returnValue:
            _i6.Future<_i2.AddressCheckResult>.value(_FakeAddressCheckResult_1(
          this,
          Invocation.method(
            #isHostReachable,
            [options],
          ),
        )),
      ) as _i6.Future<_i2.AddressCheckResult>);
}

/// A class which mocks [ApiProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiProvider extends _i1.Mock implements _i7.ApiProvider {
  MockApiProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<Map<String, dynamic>> get(String? endPoint) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [endPoint],
        ),
        returnValue:
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);

  @override
  _i6.Future<Map<String, dynamic>> delete(String? endPoint) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [endPoint],
        ),
        returnValue:
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);

  @override
  _i6.Future<Map<String, dynamic>> post(
    String? endPoint,
    Map<String, dynamic>? body, {
    _i8.FormData? formBody,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [
            endPoint,
            body,
          ],
          {#formBody: formBody},
        ),
        returnValue:
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);

  @override
  _i6.Future<Map<String, dynamic>> put(
    String? endPoint,
    Map<String, dynamic>? body,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [
            endPoint,
            body,
          ],
        ),
        returnValue:
            _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i6.Future<Map<String, dynamic>>);

  @override
  Map<String, dynamic> classifyResponse(_i8.Response<dynamic>? response) =>
      (super.noSuchMethod(
        Invocation.method(
          #classifyResponse,
          [response],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
}

/// A class which mocks [ConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectionChecker extends _i1.Mock implements _i9.ConnectionChecker {
  MockConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i6.Stream<_i2.InternetConnectionStatus> getConnectionInfo() =>
      (super.noSuchMethod(
        Invocation.method(
          #getConnectionInfo,
          [],
        ),
        returnValue: _i6.Stream<_i2.InternetConnectionStatus>.empty(),
      ) as _i6.Stream<_i2.InternetConnectionStatus>);
}

/// A class which mocks [HiveService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHiveService extends _i1.Mock implements _i10.HiveService {
  MockHiveService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.Box<T>> getBox<T>({required String? boxName}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBox,
          [],
          {#boxName: boxName},
        ),
        returnValue: _i6.Future<_i3.Box<T>>.value(_FakeBox_2<T>(
          this,
          Invocation.method(
            #getBox,
            [],
            {#boxName: boxName},
          ),
        )),
      ) as _i6.Future<_i3.Box<T>>);

  @override
  dynamic isExists({required String? boxName}) =>
      super.noSuchMethod(Invocation.method(
        #isExists,
        [],
        {#boxName: boxName},
      ));

  @override
  dynamic addBoxes<T>(
    List<T>? items,
    String? boxName,
  ) =>
      super.noSuchMethod(Invocation.method(
        #addBoxes,
        [
          items,
          boxName,
        ],
      ));

  @override
  dynamic clearAllValues<T>(String? boxName) =>
      super.noSuchMethod(Invocation.method(
        #clearAllValues,
        [boxName],
      ));

  @override
  dynamic getBoxes<T>(String? boxName) => super.noSuchMethod(Invocation.method(
        #getBoxes,
        [boxName],
      ));

  @override
  dynamic deleteBoxes<T>(
    String? boxName, {
    required int? index,
  }) =>
      super.noSuchMethod(Invocation.method(
        #deleteBoxes,
        [boxName],
        {#index: index},
      ));
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i11.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i4.AuthResponseEntity> login(_i12.LoginRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i6.Future<_i4.AuthResponseEntity>.value(_FakeAuthResponseEntity_3(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i6.Future<_i4.AuthResponseEntity>);

  @override
  _i6.Future<void> saveUserInfo(_i13.LoginLocalModel? userInfo) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveUserInfo,
          [userInfo],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<_i4.LoginResTableEntity?> getUserInfo() => (super.noSuchMethod(
        Invocation.method(
          #getUserInfo,
          [],
        ),
        returnValue: _i6.Future<_i4.LoginResTableEntity?>.value(),
      ) as _i6.Future<_i4.LoginResTableEntity?>);

  @override
  _i6.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [AuthRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRemoteDataSource extends _i1.Mock
    implements _i14.AuthRemoteDataSource {
  MockAuthRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i4.AuthResponseEntity> login(_i12.LoginRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i6.Future<_i4.AuthResponseEntity>.value(_FakeAuthResponseEntity_3(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i6.Future<_i4.AuthResponseEntity>);

  @override
  _i6.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [AuthLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthLocalDataSource extends _i1.Mock
    implements _i15.AuthLocalDataSource {
  MockAuthLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<void> saveUserToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #saveUserToken,
          [token],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> saveUserInfo(_i13.LoginLocalModel? userInfo) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveUserInfo,
          [userInfo],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<_i4.LoginResTableEntity?> getUserInfo() => (super.noSuchMethod(
        Invocation.method(
          #getUserInfo,
          [],
        ),
        returnValue: _i6.Future<_i4.LoginResTableEntity?>.value(),
      ) as _i6.Future<_i4.LoginResTableEntity?>);

  @override
  _i6.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [DashBoardRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDashBoardRemoteDataSource extends _i1.Mock
    implements _i16.DashBoardRemoteDataSource {
  MockDashBoardRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i5.WordThoughtsModel> fetchWordandThoghtOfTheDay(
          _i17.AcademicAndCompIdRequest? wordThoughtRequest) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordandThoghtOfTheDay,
          [wordThoughtRequest],
        ),
        returnValue:
            _i6.Future<_i5.WordThoughtsModel>.value(_FakeWordThoughtsModel_4(
          this,
          Invocation.method(
            #fetchWordandThoghtOfTheDay,
            [wordThoughtRequest],
          ),
        )),
      ) as _i6.Future<_i5.WordThoughtsModel>);
}

/// A class which mocks [DashBoardRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDashBoardRepository extends _i1.Mock
    implements _i18.DashBoardRepository {
  MockDashBoardRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i19.WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
          _i17.AcademicAndCompIdRequest? wordThoughtRequest) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordandThoghtOfTheDay,
          [wordThoughtRequest],
        ),
        returnValue: _i6.Future<_i19.WordThoughtsEntity?>.value(),
      ) as _i6.Future<_i19.WordThoughtsEntity?>);
}

/// A class which mocks [DashBoardLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDashBoardLocalDataSource extends _i1.Mock
    implements _i20.DashBoardLocalDataSource {
  MockDashBoardLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i21.WordThoughtsHiveModel?> fetchWordandThoghtOfTheDay() =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordandThoghtOfTheDay,
          [],
        ),
        returnValue: _i6.Future<_i21.WordThoughtsHiveModel?>.value(),
      ) as _i6.Future<_i21.WordThoughtsHiveModel?>);

  @override
  _i6.Future<void> saveWordandThoghtOfTheDay(
          _i19.WordThoughtsEntity? wordThoughtsModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveWordandThoghtOfTheDay,
          [wordThoughtsModel],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [DrawerMenuItemsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockDrawerMenuItemsRepository extends _i1.Mock
    implements _i22.DrawerMenuItemsRepository {
  MockDrawerMenuItemsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i23.NewsBoardEntity?>> getNewsBoard(
          _i24.NewsBoardRequest? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNewsBoard,
          [params],
        ),
        returnValue: _i6.Future<List<_i23.NewsBoardEntity?>>.value(
            <_i23.NewsBoardEntity?>[]),
      ) as _i6.Future<List<_i23.NewsBoardEntity?>>);
}

/// A class which mocks [DrawerMenuItemsRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDrawerMenuItemsRemoteDataSource extends _i1.Mock
    implements _i25.DrawerMenuItemsRemoteDataSource {
  MockDrawerMenuItemsRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i26.NewsBoardModel?>> getNewsBoard(
          _i24.NewsBoardRequest? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getNewsBoard,
          [params],
        ),
        returnValue: _i6.Future<List<_i26.NewsBoardModel?>>.value(
            <_i26.NewsBoardModel?>[]),
      ) as _i6.Future<List<_i26.NewsBoardModel?>>);
}
