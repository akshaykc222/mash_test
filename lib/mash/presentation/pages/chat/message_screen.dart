import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:go_router/go_router.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/chat/chat_room_model.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';
import 'package:mash/mash/presentation/widgets/svg_asset_img.dart';
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
    return Scaffold(
      appBar: chatAppBarNew(context, ontTap: () {
        GoRouter.of(context).pushNamed(AppPages.groupDetails);
      }),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return _chatMessages();
              },
            ),
          ),
          Container(
            color: AppColors.redIndication,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: _sendMessageField(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sendMessageField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {},
            child: _attachMendIcon(),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: TextField(
              controller: _messageController,
              maxLines: null, // Allows unlimited lines
              decoration: InputDecoration(
                hintText: "Write message...",
                hintStyle: const TextStyle(color: Colors.black54),
                filled: true,
                fillColor: AppColors.primaryColor.withOpacity(0.08),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              addMessage(_messageController.text);
              _messageController.clear();
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
              ),
              child: assetFromSvg(
                AppAssets.chatMessageSendIcon,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _attachMendIcon() {
    return assetFromSvg(
      AppAssets.attachmentIcon,
      color: AppColors.grey600,
      // height: 2,
    );
  }
}
