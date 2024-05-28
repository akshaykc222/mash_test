import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/drawer_menu_items/news_board_model.dart';
import '../models/request/news_board_request.dart';
import '../routes/app_remote_routes.dart';

abstract interface class DrawerMenuItemsRemoteDataSource {
  Future<List<NewsBoardModel?>> getNewsBoard(NewsBoardRequest params);
}

@LazySingleton(as: DrawerMenuItemsRemoteDataSource)
@injectable
class DrawerMenuItemsRemoteDataSourceImpl
    implements DrawerMenuItemsRemoteDataSource {
  final ApiProvider apiProvider;

  DrawerMenuItemsRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<NewsBoardModel?>> getNewsBoard(NewsBoardRequest params) async {
    final data =
        await apiProvider.get(AppRemoteRoutes.newsBoard, body: params.toJson());

    final List<dynamic> datalist = data['resTable'];
    final res = datalist.map((e) => NewsBoardModel.fromJson(e)).toList();
    return res;
  }
}
