import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/notice_remote_data_source.dart';
import 'package:mash/mash/domain/entities/notice/notice_pop_up_entity.dart';
import 'package:mash/mash/domain/repositories/notice_repository.dart';
import '../remote/models/request/notice_pop_up_request.dart';

@LazySingleton(as: NoticeRepository)
@injectable
class NoticeRepositoryImple implements NoticeRepository {
  final NoticeRemoteDataSource noticeRemoteDataSource;

  NoticeRepositoryImple({required this.noticeRemoteDataSource});
  @override
  Future<NoticePopUpEntity> getNoticePopUp(NoticePopUpRequest params) async {
    return await noticeRemoteDataSource.getNoticePopUp(params);
  }
}
