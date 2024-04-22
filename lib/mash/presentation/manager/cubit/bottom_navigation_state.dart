part of 'bottom_navigation_cubit.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState({required int index}) =
      _BottomNavigationState;
  factory BottomNavigationState.initial() => BottomNavigationState(index: 0);
}
