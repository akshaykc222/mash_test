import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mash/mash/data/remote/models/chat/chat_message_model.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/utils/enums.dart';

class ChatTile extends StatelessWidget {
  final ChatMessageModel message;
  final LoginResTableEntity currentUser;

  const ChatTile({super.key, required this.message, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTapDown: (details) =>
              _showContextMenu(context, details.globalPosition),
          child: Container(
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (message.senderId == currentUser.usrId
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (message.senderId == currentUser.usrId
                      ? Colors.grey.shade200
                      : Colors.blue[200]),
                ),
                padding: const EdgeInsets.all(16),
                child: Text(
                  message.text,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: (message.senderId == currentUser.usrId
              ? Alignment.topLeft
              : Alignment.topRight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              DateFormat("hh:mm a").format(message.timestamp),
              style: const TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }

  void _showContextMenu(BuildContext context, Offset offset) async {
    final chatBloc = ChatBloc.get(context);
    double left = offset.dx;
    double top = offset.dy;
    final result = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(left, top, 0, 0),
      items: [
        const PopupMenuItem(
          value: '1',
          child: Row(
            children: [
              Icon(Icons.star_border),
              SizedBox(
                width: 5,
              ),
              Text('Star'),
            ],
          ),
        ),
        if (getUserType(currentUser.userType) == UserTypes.staff)
          const PopupMenuItem(
            value: '2',
            child: Row(
              children: [
                Icon(Icons.control_point),
                SizedBox(
                  width: 5,
                ),
                Text('Pin'),
              ],
            ),
          ),
      ],
    );
    switch (result) {
      case '1':
        message.star = true;
        chatBloc.add(ChatEvent.updateMessage(model: message));
        break;
      case '2':
        message.pinMessage = true;
        chatBloc.add(ChatEvent.updateMessage(model: message));
        break;
      default:
        break;
    }
  }
}
