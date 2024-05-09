import 'package:equatable/equatable.dart';

class NoticeAllEntity extends Equatable {
  final double? noticeId;
  final String? topicHead;
  final String? topicDesc;
  final String? noticeDate;
  final String? createdBy;
  final bool? readStatus;
  final String? ext;

  const NoticeAllEntity({
    required this.noticeId,
    required this.topicHead,
    required this.topicDesc,
    required this.noticeDate,
    required this.createdBy,
    required this.readStatus,
    required this.ext,
  });

  @override
  List<Object?> get props => [noticeId];
}
