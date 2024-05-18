// Mocks generated by Mockito 5.4.4 from annotations
// in mash/test/mash_test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i10;
import 'package:hive/hive.dart' as _i3;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i2;
import 'package:mash/core/api_provider.dart' as _i9;
import 'package:mash/core/connection_checker.dart' as _i11;
import 'package:mash/core/firebase_database.dart' as _i13;
import 'package:mash/core/hive_service.dart' as _i12;
import 'package:mash/mash/data/local/data_sources/auth_local_data_source.dart'
    as _i19;
import 'package:mash/mash/data/local/models/login_local_model.dart' as _i17;
import 'package:mash/mash/data/remote/data_sources/auth_remote_data_source.dart'
    as _i18;
import 'package:mash/mash/data/remote/data_sources/dashboard_remote_data_source.dart'
    as _i20;
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart'
    as _i14;
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart' as _i4;
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart'
    as _i7;
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart'
    as _i21;
import 'package:mash/mash/data/remote/models/request/login_request.dart'
    as _i16;
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart'
    as _i6;
import 'package:mash/mash/domain/repositories/auth_repository.dart' as _i15;
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

class _FakeChatRoomModel_3 extends _i1.SmartFake implements _i4.ChatRoomModel {
  _FakeChatRoomModel_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQuerySnapshot_4<T extends Object?> extends _i1.SmartFake
    implements _i5.QuerySnapshot<T> {
  _FakeQuerySnapshot_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthResponseEntity_5 extends _i1.SmartFake
    implements _i6.AuthResponseEntity {
  _FakeAuthResponseEntity_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWordThoughtsModel_6 extends _i1.SmartFake
    implements _i7.WordThoughtsModel {
  _FakeWordThoughtsModel_6(
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
  _i8.Future<bool> get hasConnection => (super.noSuchMethod(
        Invocation.getter(#hasConnection),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Future<_i2.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(
        Invocation.getter(#connectionStatus),
        returnValue: _i8.Future<_i2.InternetConnectionStatus>.value(
            _i2.InternetConnectionStatus.connected),
      ) as _i8.Future<_i2.InternetConnectionStatus>);

  @override
  _i8.Stream<_i2.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i8.Stream<_i2.InternetConnectionStatus>.empty(),
      ) as _i8.Stream<_i2.InternetConnectionStatus>);

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
  _i8.Future<_i2.AddressCheckResult> isHostReachable(
          _i2.AddressCheckOptions? options) =>
      (super.noSuchMethod(
        Invocation.method(
          #isHostReachable,
          [options],
        ),
        returnValue:
            _i8.Future<_i2.AddressCheckResult>.value(_FakeAddressCheckResult_1(
          this,
          Invocation.method(
            #isHostReachable,
            [options],
          ),
        )),
      ) as _i8.Future<_i2.AddressCheckResult>);
}

/// A class which mocks [ApiProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiProvider extends _i1.Mock implements _i9.ApiProvider {
  MockApiProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<Map<String, dynamic>> get(String? endPoint) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [endPoint],
        ),
        returnValue:
            _i8.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i8.Future<Map<String, dynamic>>);

  @override
  _i8.Future<Map<String, dynamic>> delete(String? endPoint) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [endPoint],
        ),
        returnValue:
            _i8.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i8.Future<Map<String, dynamic>>);

  @override
  _i8.Future<Map<String, dynamic>> post(
    String? endPoint,
    Map<String, dynamic>? body, {
    _i10.FormData? formBody,
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
            _i8.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i8.Future<Map<String, dynamic>>);

  @override
  _i8.Future<Map<String, dynamic>> put(
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
            _i8.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i8.Future<Map<String, dynamic>>);

  @override
  Map<String, dynamic> classifyResponse(_i10.Response<dynamic>? response) =>
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
class MockConnectionChecker extends _i1.Mock implements _i11.ConnectionChecker {
  MockConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);

  @override
  _i8.Stream<_i2.InternetConnectionStatus> getConnectionInfo() =>
      (super.noSuchMethod(
        Invocation.method(
          #getConnectionInfo,
          [],
        ),
        returnValue: _i8.Stream<_i2.InternetConnectionStatus>.empty(),
      ) as _i8.Stream<_i2.InternetConnectionStatus>);
}

/// A class which mocks [HiveService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHiveService extends _i1.Mock implements _i12.HiveService {
  MockHiveService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i3.Box<T>> getBox<T>({required String? boxName}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBox,
          [],
          {#boxName: boxName},
        ),
        returnValue: _i8.Future<_i3.Box<T>>.value(_FakeBox_2<T>(
          this,
          Invocation.method(
            #getBox,
            [],
            {#boxName: boxName},
          ),
        )),
      ) as _i8.Future<_i3.Box<T>>);

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

/// A class which mocks [FirebaseDatabaseMethods].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseDatabaseMethods extends _i1.Mock
    implements _i13.FirebaseDatabaseMethods {
  MockFirebaseDatabaseMethods() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<void> addUserInfo(dynamic userData) => (super.noSuchMethod(
        Invocation.method(
          #addUserInfo,
          [userData],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<void> updateUserInfo({
    required String? id,
    required Map<String, dynamic>? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUserInfo,
          [],
          {
            #id: id,
            #data: data,
          },
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Stream<List<_i6.LoginResTableEntity>> getUsers(String? role) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [role],
        ),
        returnValue: _i8.Stream<List<_i6.LoginResTableEntity>>.empty(),
      ) as _i8.Stream<List<_i6.LoginResTableEntity>>);

  @override
  dynamic getUserInfo(String? userId) => super.noSuchMethod(Invocation.method(
        #getUserInfo,
        [userId],
      ));

  @override
  dynamic searchByName(String? searchField) =>
      super.noSuchMethod(Invocation.method(
        #searchByName,
        [searchField],
      ));

  @override
  _i8.Future<_i4.ChatRoomModel> addChatRoom(_i4.ChatRoomModel? chatRoom) =>
      (super.noSuchMethod(
        Invocation.method(
          #addChatRoom,
          [chatRoom],
        ),
        returnValue: _i8.Future<_i4.ChatRoomModel>.value(_FakeChatRoomModel_3(
          this,
          Invocation.method(
            #addChatRoom,
            [chatRoom],
          ),
        )),
      ) as _i8.Future<_i4.ChatRoomModel>);

  @override
  _i8.Stream<List<_i14.ChatMessageModel>> getChats(String? chatRoomId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getChats,
          [chatRoomId],
        ),
        returnValue: _i8.Stream<List<_i14.ChatMessageModel>>.empty(),
      ) as _i8.Stream<List<_i14.ChatMessageModel>>);

  @override
  _i8.Future<_i5.QuerySnapshot<Map<String, dynamic>>> getMembers(
          List<String>? members) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMembers,
          [members],
        ),
        returnValue: _i8.Future<_i5.QuerySnapshot<Map<String, dynamic>>>.value(
            _FakeQuerySnapshot_4<Map<String, dynamic>>(
          this,
          Invocation.method(
            #getMembers,
            [members],
          ),
        )),
      ) as _i8.Future<_i5.QuerySnapshot<Map<String, dynamic>>>);

  @override
  _i8.Future<void> updateMessage(_i14.ChatMessageModel? message) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateMessage,
          [message],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<void> updateRoom(_i4.ChatRoomModel? room) => (super.noSuchMethod(
        Invocation.method(
          #updateRoom,
          [room],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<void> addMessage(
    String? chatRoomId,
    dynamic chatMessageData,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addMessage,
          [
            chatRoomId,
            chatMessageData,
          ],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Stream<List<_i4.ChatRoomModel>> getUserChats(String? itIsMyName) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserChats,
          [itIsMyName],
        ),
        returnValue: _i8.Stream<List<_i4.ChatRoomModel>>.empty(),
      ) as _i8.Stream<List<_i4.ChatRoomModel>>);
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i15.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.AuthResponseEntity> login(_i16.LoginRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i8.Future<_i6.AuthResponseEntity>.value(_FakeAuthResponseEntity_5(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i8.Future<_i6.AuthResponseEntity>);

  @override
  _i8.Future<void> saveUserInfo(_i17.LoginLocalModel? userInfo) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveUserInfo,
          [userInfo],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<_i6.LoginResTableEntity?> getUserInfo() => (super.noSuchMethod(
        Invocation.method(
          #getUserInfo,
          [],
        ),
        returnValue: _i8.Future<_i6.LoginResTableEntity?>.value(),
      ) as _i8.Future<_i6.LoginResTableEntity?>);

  @override
  _i8.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
}

/// A class which mocks [AuthRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRemoteDataSource extends _i1.Mock
    implements _i18.AuthRemoteDataSource {
  MockAuthRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.AuthResponseEntity> login(_i16.LoginRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [request],
        ),
        returnValue:
            _i8.Future<_i6.AuthResponseEntity>.value(_FakeAuthResponseEntity_5(
          this,
          Invocation.method(
            #login,
            [request],
          ),
        )),
      ) as _i8.Future<_i6.AuthResponseEntity>);

  @override
  _i8.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
}

/// A class which mocks [AuthLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthLocalDataSource extends _i1.Mock
    implements _i19.AuthLocalDataSource {
  MockAuthLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<void> saveUserToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #saveUserToken,
          [token],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<void> saveUserInfo(_i17.LoginLocalModel? userInfo) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveUserInfo,
          [userInfo],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<_i6.LoginResTableEntity?> getUserInfo() => (super.noSuchMethod(
        Invocation.method(
          #getUserInfo,
          [],
        ),
        returnValue: _i8.Future<_i6.LoginResTableEntity?>.value(),
      ) as _i8.Future<_i6.LoginResTableEntity?>);

  @override
  _i8.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);
}

/// A class which mocks [DashBoardRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDashBoardRemoteDataSource extends _i1.Mock
    implements _i20.DashBoardRemoteDataSource {
  MockDashBoardRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i7.WordThoughtsModel> fetchWordandThoghtOfTheDay(
          _i21.WordThoughtRequest? wordThoughtRequest) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchWordandThoghtOfTheDay,
          [wordThoughtRequest],
        ),
        returnValue:
            _i8.Future<_i7.WordThoughtsModel>.value(_FakeWordThoughtsModel_6(
          this,
          Invocation.method(
            #fetchWordandThoghtOfTheDay,
            [wordThoughtRequest],
          ),
        )),
      ) as _i8.Future<_i7.WordThoughtsModel>);
}
