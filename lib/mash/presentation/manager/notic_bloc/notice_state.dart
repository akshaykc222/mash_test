part of 'notice_bloc.dart';

@freezed
class NoticeState with _$NoticeState {
  const factory NoticeState({
    required ResponseClassify noticeResponseData,
  }) = _NoticeState;
  factory NoticeState.initial() => NoticeState(
        noticeResponseData: ResponseClassify.initial(),
      );
}
