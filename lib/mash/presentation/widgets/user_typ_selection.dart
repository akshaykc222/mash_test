import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/chat_bloc/chat_bloc.dart';
import '../utils/app_colors.dart';
import '../utils/enums.dart';

Widget userTypeSelectionChat({required BuildContext context}) {
  var chatBloc = ChatBloc.get(context);
  return BlocBuilder<ChatBloc, ChatState>(
    builder: (context, state) {
      return Row(
        children: [
          ...UserTypes.values.map((e) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    chatBloc.add(ChatEvent.changeUserFilter(selectedUser: e));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        color: state.selectedType == e
                            ? AppColors.selPrimaryColor.withOpacity(0.5)
                            : AppColors.primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        e.name.toUpperCase(),
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      );
    },
  );
}
