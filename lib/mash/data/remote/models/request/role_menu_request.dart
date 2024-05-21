class RoleMenuRequest {
  final String compId;
  final String userType;
  final String userId;
  final String roleId;

  RoleMenuRequest(
      {required this.compId,
      required this.userType,
      required this.userId,
      required this.roleId});
}
