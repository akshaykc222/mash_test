import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/entities/notice/notice_pop_up_entity.dart';
import 'package:mash/mash/domain/repositories/notice_repository.dart';

import '../../../data/remote/models/request/notice_pop_up_request.dart';

@injectable
class GetNoticeBoardPopUp
    implements UseCase<NoticePopUpEntity?, NoticePopUpRequest> {
  final NoticeRepository noticeRepository;

  GetNoticeBoardPopUp(this.noticeRepository);
  @override
  Future<NoticePopUpEntity?> call(params) {
    return noticeRepository.getNoticePopUp(params);
  }
}
