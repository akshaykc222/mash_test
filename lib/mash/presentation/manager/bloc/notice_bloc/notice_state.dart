part of 'notice_bloc.dart';

@freezed
class NoticeState with _$NoticeState {
  const factory NoticeState({
    required ResponseClassify<List<NoticeAllEntity?>> noticeResponseData,
  }) = _NoticeState;
  factory NoticeState.initial() => NoticeState(
        noticeResponseData: ResponseClassify.initial(),
      );
}
