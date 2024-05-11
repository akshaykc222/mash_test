part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getChatRooms() = _GetRooms;
  const factory ChatEvent.createGroupInit() = _CreateGroupInit;
  const factory ChatEvent.getMessages({required String id}) = _CreateGroupInit;
  const factory ChatEvent.sendMessage({required ChatMessageModel message}) =
      _SendMessage;
  // const factory ChatEvent.getChatRooms() = _GetChatRooms;
  const factory ChatEvent.addAdmins({required String userId}) = _AddAdmins;
  const factory ChatEvent.selectUser({required LoginResTableEntity user}) =
      _SelectUser;
  const factory ChatEvent.changeUserFilter({required UserTypes selectedUser}) =
      _ChangeUserFilter;
  const factory ChatEvent.addChatRooms(
      {required String chatRoomName,
      required BuildContext context}) = _AddRooms;
}
