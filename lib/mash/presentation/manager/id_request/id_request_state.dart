part of 'id_request_bloc.dart';

@freezed
class IdRequestState with _$IdRequestState {
  const factory IdRequestState ({
    ResponseClassify<List<IdRequestEntity>>? getIdRequestType
  }) = _IdRequestState;

  factory IdRequestState.initial() => const IdRequestState();
}
