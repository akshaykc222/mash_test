import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../data/remote/models/chat/chat_message_model.dart';
import '../../router/app_pages.dart';
import '../../utils/convert_list_to_date_based.dart';
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

  final _messageController = TextEditingController();
  final _scrollController = ScrollController();

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
        return StreamBuilder<List<ChatMessageModel>>(
            stream: state.selectedChatRoomMessages,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                var items = getChatItems(snapshot.data ?? []);
                prettyPrint("chat Items ${items.map((e) => e.toJson())}");
                return ChatFormattedMessages(
                  items: items,
                  currentUser: state.currentUser!,
                  scrollController: _scrollController,
                );
              } else {
                return const SizedBox();
              }
            });
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: chatAppBarNew(context, ontTap: () {
          GoRouter.of(context).pushNamed(AppPages.groupDetails);
        }),
        resizeToAvoidBottomInset: true,
        bottomSheet: Container(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          height: 60,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextFormField(
                  controller: _messageController,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: "Write message...",
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                onPressed: () {
                  addMessage(_messageController.text);
                  _messageController.clear();
                },
                backgroundColor: Colors.blue,
                elevation: 0,
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        body: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return _chatMessages();
          },
        ),
      ),
    );
  }
}
