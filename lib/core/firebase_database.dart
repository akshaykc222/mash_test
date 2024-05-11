import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/presentation/utils/chat_db_names.dart';

@singleton
class FirebaseDatabaseMethods {
  Future<void> addUserInfo(userData) async {
    FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .add(userData)
        .catchError((e) {});
  }

  Future<void> updateUserInfo(
      {required String id, required Map<String, dynamic> data}) async {
    FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .doc(id)
        .update(data)
        .catchError((e) {});
  }

  Stream<List<LoginResTableEntity>> getUsers(String role) {
    prettyPrint("Fetching users with role $role");
    return FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .where("USER_TYPE", isEqualTo: role)
        .snapshots()
        .map((event) {
      prettyPrint("users list length :${event.docs.first.get("USER_TYPE")}");
      return event.docs
          .map((e) => LoginResTableModel.fromJson(e.data()))
          .toList();
    });
  }

  getUserInfo(String userId) async {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .where("USR_ID", isEqualTo: userId)
        .get()
        .catchError((e) {});
  }

  searchByName(String searchField) {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .where('USR_ID', isEqualTo: searchField)
        .get();
  }

  Future<void> addChatRoom(chatRoom, chatRoomId) async {
    FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .doc()
        .set(chatRoom)
        .catchError((e) {});
  }

  Stream<List<ChatMessageModel>> getChats(String chatRoomId) {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .doc(chatRoomId)
        .collection(ChatDbNames.chats)
        .orderBy('time', descending: true)
        .snapshots()
        .map((event) {
      return event.docs.map((e) => ChatMessageModel.fromMap(e.data())).toList();
    });
  }

  Future<void> addMessage(String chatRoomId, chatMessageData) async {
    FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .doc(chatRoomId)
        .collection(ChatDbNames.chats)
        .add(chatMessageData)
        .catchError((e) {
      prettyPrint(e);
    });
  }

  Stream<List<ChatRoomModel>> getUserChats(String itIsMyName) {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .where('members', arrayContains: itIsMyName)
        .snapshots()
        .map((event) =>
            event.docs.map((e) => ChatRoomModel.fromMap(e.data())).toList());
  }
}
