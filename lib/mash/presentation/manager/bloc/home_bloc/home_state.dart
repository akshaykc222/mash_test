part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
          {required ResponseClassify<List<AddOnEntity>> addOnResponse}) =
      _HomeState;
  factory HomeState.initial() =>
      HomeState(addOnResponse: ResponseClassify.initial());
}
