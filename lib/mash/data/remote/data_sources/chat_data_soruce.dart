import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mash/core/firebase_database.dart';
import 'package:mash/mash/data/local/models/login_local_model.dart';
import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

import '../../../../core/hive_service.dart';
import '../models/chat/chat_message_model.dart';

abstract class ChatDataSource {
  Future<void> addChatRoom(ChatRoomModel chatRoom);
  Future<void> sendMessage(ChatMessageModel chatRoom);
  Stream<List<ChatRoomModel>> getChatRooms();
  Stream<List<ChatMessageModel>> getChatRoomMessages(String chatRoomId);
  Stream<List<LoginResTableEntity>> getUsers(String role);
  Future<List<LoginResTableEntity>> getUsersOfGroups(List<String> members);
}

@LazySingleton(as: ChatDataSource)
@injectable
class ChatDataSourceImpl extends ChatDataSource {
  final FirebaseDatabaseMethods firebaseDatabase;
  final HiveService hiveService;

  ChatDataSourceImpl(this.firebaseDatabase, this.hiveService);

  @override
  Future<void> addChatRoom(ChatRoomModel chatRoom) async {
    await firebaseDatabase.addChatRoom(chatRoom.toMap(), chatRoom.id);
  }

  @override
  Stream<List<ChatMessageModel>> getChatRoomMessages(String chatRoomId) {
    return firebaseDatabase.getChats(chatRoomId);
  }

  @override
  Stream<List<LoginResTableEntity>> getUsers(String role) {
    return firebaseDatabase.getUsers(role);
  }

  @override
  Stream<List<ChatRoomModel>> getChatRooms() {
    StreamController<List<ChatRoomModel>> controller = StreamController();

    hiveService
        .getBoxes<LoginLocalModel>(LocalStorageNames.userInfo)
        .then((user) {
      // if (user.isEmpty) {
      // controller
      //     .addError(UnauthorisedException("User not found in local db"));
      // } else {
      firebaseDatabase.getUserChats("MGS1000152").listen((chats) {
        controller.add(chats);
      }, onError: (error) {
        controller.addError(error);
      });
      // }
    }).catchError((error) {
      controller.addError(error);
    });

    return controller.stream;
  }

  @override
  Future<void> sendMessage(ChatMessageModel chatRoom) async {
    await firebaseDatabase.addMessage(chatRoom.roomId, chatRoom.toMap());
  }

  @override
  Future<List<LoginResTableEntity>> getUsersOfGroups(
      List<String> members) async {
    final data = await firebaseDatabase.getMembers(members);
    return data.docs.map((e) => LoginResTableModel.fromJson(e.data())).toList();
  }
}
