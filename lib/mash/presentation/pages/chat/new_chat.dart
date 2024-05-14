import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mash/di/injector.dart';
import 'package:mash/mash/presentation/manager/chat_bloc/chat_bloc.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';

import '../../../../core/pretty_printer.dart';
import '../../../../firebase_options.dart';
import '../../../domain/entities/auth/auth_response_entity.dart';
import '../../utils/enums.dart';
import '../../widgets/user_typ_selection.dart';
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
    child: MaterialApp(
      home: NewChat(),
    ),
  ));
}

class NewChat extends StatefulWidget {
  const NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  late ChatBloc chatBloc;

  @override
  void initState() {
    chatBloc = ChatBloc.get(context);
    chatBloc.add(const ChatEvent.getUsers(selectedUserType: UserTypes.student));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
                Text(
                  "Create Group",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            spacer20,
            InkWell(
              onTap: () {
                GoRouter.of(context).pushNamed(AppPages.createGroup);
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  "Start a new chat",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            userTypeSelectionChat(context: context),
            _usersList()
          ],
        ),
      ),
    );
  }

  _usersList() => BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          prettyPrint("Rebuilding ${state.selectedChatRoom}");
          return StreamBuilder<List<LoginResTableEntity>>(
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
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return UserChatTile(
                      haveSelection: true,
                      user: users[index],
                      isFromList: true,
                      isAdmin: state.selectedChatRoom?.admins
                              ?.contains(users[index].usrId) ==
                          true,
                      selected: state.selectedChatRoom?.members
                              ?.contains(users[index].usrId) ==
                          true,
                      onTap: () {
                        chatBloc.add(ChatEvent.selectUser(user: users[index]));
                      },
                    );
                  },
                );
              }
            },
          );
        },
      );
}
