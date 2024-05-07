import '../../data/remote/models/request/notice_pop_up_request.dart';
import '../entities/notice/notice_pop_up_entity.dart';

abstract interface class NoticeRepository {
  Future<NoticePopUpEntity> getNoticePopUp(NoticePopUpRequest params);
}
