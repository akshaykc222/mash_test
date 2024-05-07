import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/presentation/utils/chat_db_names.dart';

class FirebaseDatabaseMethods {
  Future<void> addUserInfo(userData) async {
    FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .add(userData)
        .catchError((e) {});
  }

  getUserInfo(String email) async {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .where("userEmail", isEqualTo: email)
        .get()
        .catchError((e) {});
  }

  searchByName(String searchField) {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.users)
        .where('userName', isEqualTo: searchField)
        .get();
  }

  Future<void> addChatRoom(chatRoom, chatRoomId) async {
    FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .doc(chatRoomId)
        .set(chatRoom)
        .catchError((e) {});
  }

  getChats(String chatRoomId) async {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .doc(chatRoomId)
        .collection(ChatDbNames.chats)
        .orderBy('time', descending: true)
        .snapshots();
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

  getUserChats(String itIsMyName) async {
    return FirebaseFirestore.instance
        .collection(ChatDbNames.chatRooms)
        .where('users', arrayContains: itIsMyName)
        .snapshots();
  }
}
