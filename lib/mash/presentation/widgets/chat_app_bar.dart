import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

import '../manager/chat_bloc/chat_bloc.dart';

PreferredSize chapAppBar(BuildContext context){
  return PreferredSize(
      preferredSize: const Size(double.infinity, 60),
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              // GoRouter.of(context).pushNamed(AppPages.groupDetails);
            },
            child: Row(
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 8.0, right: 8, bottom: 15),
                      child: Icon(LineIcons.arrowLeft),
                    ),
                  ],
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    state.selectedChatRoom?.name ?? "",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ));
}