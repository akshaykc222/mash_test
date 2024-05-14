import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as ui;
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../data/remote/models/chat/chat_message_model.dart';
import '../../widgets/chat_app_bar.dart';

class MessagesScreen extends StatefulWidget {
  final ChatRoomModel model;

  const MessagesScreen({super.key, required this.model});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  late types.User _user;
  late ChatBloc chatBloc;

  void _handleSendPressed(types.PartialText message) {
    addMessage(message.text);
  }

  addMessage(String message) async {
    if (message.isNotEmpty) {
      chatBloc.add(ChatEvent.sendMessage(
          message: ChatMessageModel(
        id: const Uuid().v1(),
        senderId: widget.model.id,
        roomId: widget.model.id,
        text: message,
        timestamp: DateTime.now(),
      )));
    }
  }

  Widget _chatMessages() {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return StreamBuilder(
          stream: state.selectedChatRoomMessages,
          builder: (context, AsyncSnapshot<List<ChatMessageModel>> snapshot) {
            return ui.Chat(
              messages: snapshot.hasData
                  ? snapshot.data!
                      .map((e) => types.TextMessage(
                          author: types.User(id: e.senderId),
                          id: const Uuid().v1(),
                          text: e.text,
                          roomId: e.roomId,
                          createdAt: Timestamp.fromDate(e.timestamp).seconds))
                      .toList()
                  : [],
              onPreviewDataFetched: _handlePreviewDataFetched,
              onSendPressed: _handleSendPressed,
              user: _user,
            );
          },
        );
      },
    );
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {}

  @override
  void initState() {
    _user = types.User(id: widget.model.id);
    chatBloc = ChatBloc.get(context);
    chatBloc.add(ChatEvent.getMessages(room: widget.model));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: chapAppBar(context),
        resizeToAvoidBottomInset: true,
        body: _chatMessages(),
      ),
    );
  }
}
