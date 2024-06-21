part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.getNewsBoard() = _GetNewsBoard;
  const factory DrawerEvent.getRoleMenuEvent() = _GetRoleMenuEvent;
}
