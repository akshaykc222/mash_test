part of 'notice_bloc.dart';

@freezed
class NoticeEvent with _$NoticeEvent {
  const factory NoticeEvent.getNoticePopUp() = _GetNoticePopUp;
  const factory NoticeEvent.getAllNotice() = _GetAllNotice;
}
