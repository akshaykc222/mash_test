part of 'id_request_bloc.dart';

@freezed
class IdRequestEvent with _$IdRequestEvent {
  const factory IdRequestEvent.started() = _Started;
  const factory IdRequestEvent.getTransferRequestEvent() = _GetIdRequest;
}
