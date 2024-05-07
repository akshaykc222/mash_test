part of 'notice_bloc.dart';

@freezed
class NoticeEvent with _$NoticeEvent {
  const factory NoticeEvent.getNoticePopUp(NoticePopUpRequest params) =
      _GetNoticePopUp;
}
