import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/domain/use_cases/chat/add_chat_room_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_chat_rooms_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_chat_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_group_members_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/get_users_use_case.dart';
import 'package:mash/mash/domain/use_cases/chat/send_message_use_case.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/entities/auth/auth_response_entity.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatState.initial()) {
    on<_CreateGroupInit>(_createGroupInit);
    on<_GetRooms>(_getRooms);
    on<_ChangeUserFilter>(_changeUserFilter);
    on<_SelectUser>(_selectUser);
    on<_AddAdmins>(_addAdmin);
    on<_AddRooms>(_createChatRoom);
    on<_SendMessage>(_sendMessage);
    on<_GetMessages>(_getMessage);
    on<_GetMembersOfGroup>(_getMembersOfGroup);
  }

  _getMembersOfGroup(_GetMembersOfGroup event, emit) async {
    emit(state.copyWith(selectedMembers: ResponseClassify.loading()));
    try {
      emit(state.copyWith(
          selectedMembers: ResponseClassify.completed(
              await getGroupMembersDetails
                  .call(state.selectedChatRoom?.members ?? []))));
    } catch (e) {
      prettyPrint(e.toString());
      emit(state.copyWith(
          selectedMembers: ResponseClassify.error(e.toString())));
    }
  }

  _getMessage(_GetMessages event, emit) {
    var userChats = getUserChatsUseCase.call(event.room.id);
    emit(state.copyWith(
        selectedChatRoomMessages: userChats, selectedChatRoom: event.room));
  }

  _sendMessage(_SendMessage event, emit) {
    sendMessageUseCase.call(event.message);
  }

  _createChatRoom(_AddRooms event, emit) {
    ChatRoomModel? selectedChatRoom = state.copyWith().selectedChatRoom;
    selectedChatRoom?.isGroupChat = true;
    selectedChatRoom?.name = event.chatRoomName;

    ///validating data's

    if (selectedChatRoom?.name.isEmpty == true) {
      emit(state.copyWith(
          addGroupResponse: ResponseClassify.error("Enter Group name!")));
    } else if (selectedChatRoom?.members?.isEmpty == true) {
      emit(state.copyWith(
          addGroupResponse:
              ResponseClassify.error("At-least add 1 member to continue!")));
    } else {
      emit(state.copyWith(addGroupResponse: ResponseClassify.loading()));

      try {
        emit(state.copyWith(
            addGroupResponse: ResponseClassify.completed(
                createChatRoomUseCase.call(selectedChatRoom!))));
      } catch (e) {
        prettyPrint(e.toString());
        emit(state.copyWith(
            addGroupResponse: ResponseClassify.error(e.toString())));
      }
    }
  }

  void _addAdmin(_AddAdmins event, emit) {
    ChatRoomModel? selectedChatRoom = state.copyWith().selectedChatRoom;
    List<String>? admins = selectedChatRoom?.admins?.toList();
    admins ??= [];
    if (admins.contains(event.userId) == true) {
      admins.remove(event.userId);
    } else {
      admins.add(event.userId);
    }
    selectedChatRoom?.admins = admins;
    prettyPrint("admins : ${selectedChatRoom?.admins}");

    emit(state.copyWith(selectedChatRoom: selectedChatRoom));
  }

  _selectUser(_SelectUser event, emit) {
    ChatRoomModel? selectedChatRoom = state.copyWith().selectedChatRoom;
    List<String>? users = selectedChatRoom?.members?.toList();
    users ??= [];
    if (users.contains(event.user.usrId) == true) {
      users.remove(event.user.usrId);
    } else {
      users.add(event.user.usrId);
    }
    selectedChatRoom?.members = users;

    emit(state.copyWith(selectedChatRoom: selectedChatRoom));
  }

  _changeUserFilter(_ChangeUserFilter event, emit) {
    emit(state.copyWith(
        getUsers: getUsersUseCase.call("${event.selectedUser.index + 1}"),
        selectedType: event.selectedUser));
  }

  _getRooms(_GetRooms event, emit) {
    emit(state.copyWith(
        getChatRooms: getChatRoomsUseCase.call(NoParams()),
        selectedType: null,
        selectedChatRoom: null));
  }

  _createGroupInit(_CreateGroupInit event, emit) {
    emit(state.copyWith(
        selectedType: UserTypes.student,
        getUsers: getUsersUseCase.call("${UserTypes.student.index + 1}"),
        selectedChatRoom: ChatRoomModel(
            id: const Uuid().v1(),
            name: '',
            admins: const [],
            members: const [],
            isGroupChat: true)));
  }

  /////use cases

  final getChatRoomsUseCase = getIt<GetChatRoomsUseCase>();
  final getUserChatsUseCase = getIt<GetChatUseCase>();
  final createChatRoomUseCase = getIt<AddChatRoomUseCase>();
  final getUsersUseCase = getIt<GetUsersUseCase>();
  final sendMessageUseCase = getIt<SendMessageUserCase>();
  final getGroupMembersDetails = getIt<GetUserMembersUseCase>();

  static ChatBloc get(context) => BlocProvider.of(context);
}
