part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState(
      {required ResponseClassify<List<NewsBoardEntity?>>
          newsBoardResponse}) = _DrawerState;
  factory DrawerState.initial() => DrawerState(
        newsBoardResponse: ResponseClassify.initial(),
      );
}
