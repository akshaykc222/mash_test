import 'package:mash/mash/domain/entities/dashboard/role_menu_entity.dart';

class RoleMenuModel extends RoleMenuEntity {
  const RoleMenuModel({
    required super.menuName,
    required super.icon,
  });

  factory RoleMenuModel.fromjson(Map<String, dynamic> map) {
    return RoleMenuModel(
      menuName: map['menuName'] as String,
      icon: map['icon'] as String,
    );
  }
}
