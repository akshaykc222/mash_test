import 'package:mash/mash/domain/entities/notice/notice_pop_up_entity.dart';

class NoticePopUpModel extends NoticePopUpEntity {
  const NoticePopUpModel({
    required super.topicHead,
    required super.topicDesc,
    required super.noticeDate,
    required super.docFile,
    required super.ext,
  });
  factory NoticePopUpModel.fromJson(Map<String, dynamic> json) {
    return NoticePopUpModel(
      topicHead: json['TOPIC_HEAD'],
      topicDesc: json['TOPIC_DESC'],
      noticeDate: json['NOTICE_DATE'],
      docFile: json['DOC_FILE'],
      ext: json['EXT'],
    );
  }
}
