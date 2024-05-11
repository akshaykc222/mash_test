part of 'chat_bloc.dart';

@Freezed(equal: false)
class ChatState with _$ChatState {
  const factory ChatState(
      {ChatRoomModel? selectedChatRoom,
      Stream<List<LoginResTableEntity>>? getUsers,
      Stream<List<ChatRoomModel>>? getChatRooms,
      ResponseClassify<void>? addGroupResponse,
      UserTypes? selectedType}) = _ChatState;
  factory ChatState.initial() => const ChatState();
  factory ChatState.addGroupInit() => ChatState(
      selectedChatRoom: ChatRoomModel(
          id: const Uuid().v1(),
          name: '',
          admins: [],
          members: [],
          isGroupChat: true));
  factory ChatState.addGroup({required ChatRoomModel roomModel}) =>
      ChatState(selectedChatRoom: roomModel);
}
