import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/notice/notice_pop_up_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';

import '../models/request/notice_pop_up_request.dart';

abstract interface class NoticeRemoteDataSource {
  Future<List<NoticePopUpModel>> getNoticePopUp(NoticePopUpRequest params);
}

@LazySingleton(as: NoticeRemoteDataSource)
@injectable
class NoticeRemoteDataSourceImpl implements NoticeRemoteDataSource {
  final ApiProvider apiProvider;

  NoticeRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<NoticePopUpModel>> getNoticePopUp(
      NoticePopUpRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.noticePopUp, params.toJson());
    final List<dynamic> dataList = data['resTable'];
    return dataList.map((e) => NoticePopUpModel.fromJson(e)).toList();
  }
}
