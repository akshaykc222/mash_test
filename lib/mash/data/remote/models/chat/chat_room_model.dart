import 'package:equatable/equatable.dart';

class ChatRoomModel extends Equatable {
  final String id;
  String name;
  List<String>? members;
  List<String>? admins;
  bool isGroupChat;
  final String? icon;

  ChatRoomModel({
    required this.id,
    required this.name,
    this.icon,
    this.admins,
    this.members,
    required this.isGroupChat,
  });

  factory ChatRoomModel.fromMap(Map<String, dynamic> map) {
    return ChatRoomModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      icon: map['icon'],
      members: List<String>.from(map['members'] ?? []),
      isGroupChat: map['isGroupChat'] ?? false,
      admins: List<String>.from(map['admins'] ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'members': members,
      'isGroupChat': isGroupChat,
      'admins': admins,
      'icon': icon
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, admins?.length, members?.length];
}
