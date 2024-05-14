import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/core/response_classify.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/widgets/buttons/animted_button.dart';
import 'package:mash/mash/presentation/widgets/common_text_field.dart';

import '../../../../di/injector.dart';
import '../../../../firebase_options.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';
import 'chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(BlocProvider(
    create: (context) => ChatBloc(),
    child: const MaterialApp(
      home: GroupAddScreen(),
    ),
  ));
}

class GroupAddScreen extends StatefulWidget {
  const GroupAddScreen({super.key});

  @override
  State<GroupAddScreen> createState() => _GroupAddScreenState();
}

class _GroupAddScreenState extends State<GroupAddScreen> {
  late ChatBloc chatBloc;
  final _groupNameController = TextEditingController();

  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    chatBloc.add(const ChatEvent.createGroupInit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocConsumer<ChatBloc, ChatState>(
        builder: (context, state) {
          return AnimatedSharedButton(
            onTap: () {
              chatBloc.add(ChatEvent.addChatRooms(
                  chatRoomName: _groupNameController.text, context: context));
            },
            title: const Text(
              "Create",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            isLoading: state.addGroupResponse?.status == Status.LOADING,
          );
        },
        listener: (BuildContext context, ChatState state) {
          switch (state.addGroupResponse?.status) {
            case null:
              break;
            case Status.COMPLETED:
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Group created ")));
              break;
            case Status.ERROR:
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.addGroupResponse?.error ?? "")));
              break;
            case Status.LOADING:
            // TODO: Handle this case.
            case Status.INITIAL:
            // TODO: Handle this case.
            case Status.SUCCESS:
            // TODO: Handle this case.
          }
        },
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Create Group",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonTextField(
                  title: "Group Name",
                  controller: _groupNameController,
                ),
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Select Members",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )),
              BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      ...UserTypes.values.map((e) => Expanded(
                            child: GestureDetector(
                              onTap: () {
                                chatBloc.add(ChatEvent.changeUserFilter(
                                    selectedUser: e));
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    color: state.selectedType == e
                                        ? AppColors.green
                                        : AppColors.primaryColor
                                            .withOpacity(0.5),
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
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                child: CommonTextField(
                  title: "Search",
                  suffix: const Icon(Icons.search),
                ),
              ),
              BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  prettyPrint("Rebuilding ${state.selectedChatRoom}");
                  return Expanded(
                      child: StreamBuilder<List<LoginResTableEntity>>(
                    stream: state.getUsers,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return const Center(child: Text('No data found...'));
                      } else {
                        List<LoginResTableEntity> users = snapshot.data ?? [];
                        return ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            return UserChatTile(
                              haveSelection: true,
                              user: users[index],
                              isAdmin: state.selectedChatRoom?.admins
                                      ?.contains(users[index].usrId) ==
                                  true,
                              selected: state.selectedChatRoom?.members
                                      ?.contains(users[index].usrId) ==
                                  true,
                              onTap: () {
                                chatBloc.add(
                                    ChatEvent.selectUser(user: users[index]));
                              },
                            );
                          },
                        );
                      }
                    },
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
