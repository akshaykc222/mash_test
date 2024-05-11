import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';

import '../../data/remote/models/chat/chat_message_model.dart';
import '../entities/auth/auth_response_entity.dart';

abstract class ChatRepository {
  Stream<List<ChatMessageModel>> getChats(String roomId);
  Future<void> sendMessage(ChatMessageModel chatRoom);
  Future<void> addChatRoom(ChatRoomModel roomModel);
  Stream<List<ChatRoomModel>> getChatRooms();
  Stream<List<LoginResTableEntity>> getUsers(String role);
}
