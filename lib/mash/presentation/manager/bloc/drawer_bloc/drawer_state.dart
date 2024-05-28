part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    required ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse,
    required ResponseClassify<List<RoleMenuEntity>> roleMenuResponse,
  }) = _DrawerState;
  factory DrawerState.initial() => DrawerState(
        newsBoardResponse: ResponseClassify.initial(),
        roleMenuResponse: ResponseClassify.initial(),
      );
}
