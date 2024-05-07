import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/mash/presentation/utils/app_assets.dart';
import 'package:mash/mash/presentation/utils/app_colors.dart';
import 'package:mash/mash/presentation/utils/enums.dart';
import 'package:mash/mash/presentation/utils/size_utility.dart';

void main() {
  runApp(const MaterialApp(
    home: ChatScreen(),
  ));
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ValueNotifier<ChatType> _selectedItem =
      ValueNotifier(ChatType.personal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ValueListenableBuilder(
          valueListenable: _selectedItem,
          builder: (context, data, child) {
            return BottomNavigationBar(
              elevation: 10,
              currentIndex: data.index,
              selectedFontSize: 14,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: AppColors.primaryColor,
              onTap: (item) {
                _selectedItem.value = ChatType.values[item];
              },
              items: ChatType.values
                  .map((e) => BottomNavigationBarItem(
                      label: e.name,
                      icon: e == ChatType.personal
                          ? SvgPicture.asset(
                              AppAssets.messages,
                              colorFilter: data == ChatType.personal
                                  ? ColorFilter.mode(
                                      AppColors.primaryColor, BlendMode.srcIn)
                                  : null,
                            )
                          : SvgPicture.asset(AppAssets.groups,
                              colorFilter: data == ChatType.group
                                  ? ColorFilter.mode(
                                      AppColors.primaryColor, BlendMode.srcIn)
                                  : null)))
                  .toList(),
            );
          }),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          ...List.generate(10, (index) => const UserChatTile())
        ],
      ),
    );
  }
}

class UserChatTile extends StatelessWidget {
  final bool? appBar;

  const UserChatTile({super.key, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: SizeUtility(context).width * 0.15,
                height: SizeUtility(context).width * 0.15,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Akshay",
                      style: TextStyle(
                          color: AppColors.black, fontWeight: FontWeight.bold),
                    ),
                    const Text("Developer")
                  ],
                ),
              ))
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
