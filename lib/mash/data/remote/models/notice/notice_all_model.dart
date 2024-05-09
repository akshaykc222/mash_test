import 'package:mash/mash/domain/entities/notice/notice_all_entity.dart';

class NoticeAllModel extends NoticeAllEntity {
  const NoticeAllModel({
    required super.noticeId,
    required super.topicHead,
    required super.topicDesc,
    required super.noticeDate,
    required super.createdBy,
    required super.readStatus,
    required super.ext,
  });

  factory NoticeAllModel.fromJson(Map<String, dynamic> json) => NoticeAllModel(
        noticeId: json['NOTICE_ID'] ?? 0.0,
        topicHead: json['TOPIC_HEAD'] ?? '',
        topicDesc: json['TOPIC_DESC'] ?? '',
        noticeDate: json['NOTICE_DATE'] ?? '',
        createdBy: json['CREATED_BY'] ?? '',
        readStatus: json['READ_STATUS'] ?? false,
        ext: json['EXT'] ?? '',
      );
}
