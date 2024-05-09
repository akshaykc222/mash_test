// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
// import 'package:mash/mash/presentation/pages/chat/chat_screen.dart';
// import 'package:uuid/uuid.dart';

// import '../../../../core/firebase_database.dart';
// import '../../../../firebase_options.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MaterialApp(
//     home: MessagesScreen(),
//   ));
// }

// class MessagesScreen extends StatefulWidget {
//   const MessagesScreen({super.key});

//   @override
//   State<MessagesScreen> createState() => _MessagesScreenState();
// }

// class _MessagesScreenState extends State<MessagesScreen> {
//   final List<types.Message> _messages = [];
//   late types.User _user;
//   void _handleSendPressed(types.PartialText message) {
//     addMessage(message.text);
//   }

//   addMessage(String message) async {
//     if (message.isNotEmpty) {
//       Map<String, dynamic> chatMessageMap = {
//         "sendBy": 'akshay',
//         "message": message,
//         'time': DateTime.now().millisecondsSinceEpoch,
//         'seen': false,
//       };

//       FirebaseDatabaseMethods().addMessage('akshay', chatMessageMap);
//     }
//   }

//   Stream<QuerySnapshot>? chats;
//   Widget _chatMessages() {
//     return StreamBuilder(
//       stream: chats,
//       builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         return Chat(
//           messages: snapshot.hasData
//               ? snapshot.data!.docs
//                   .map((e) => types.TextMessage(
//                       author: types.User(id: e.get('sendBy')),
//                       id: const Uuid().v1(),
//                       text: e.get('message'),
//                       createdAt: e.get('time')))
//                   .toList()
//               : [],
//           onPreviewDataFetched: _handlePreviewDataFetched,
//           onSendPressed: _handleSendPressed,
//           user: _user,
//         );
//       },
//     );
//   }

//   void _handlePreviewDataFetched(
//     types.TextMessage message,
//     types.PreviewData previewData,
//   ) {
//     final index = _messages.indexWhere((element) => element.id == message.id);
//     final updatedMessage = _messages[index];

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       setState(() {
//         _messages[index] = updatedMessage;
//       });
//     });
//   }

//   @override
//   void initState() {
//     _user = const types.User(id: 'akshay');
//     FirebaseDatabaseMethods().getChats('akshay').then((val) {
//       setState(() {
//         chats = val;
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: true,
//       child: Scaffold(
//         appBar: const PreferredSize(
//             preferredSize: Size(double.infinity, 98), child: UserChatTile()),
//         resizeToAvoidBottomInset: true,
//         body: _chatMessages(),
//       ),
//     );
//   }
// }
