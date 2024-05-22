import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart';
import 'package:mash/mash/data/remote/models/request/news_board_request.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';

import '../../domain/repositories/drawer_menu_items_repository.dart';

@LazySingleton(as: DrawerMenuItemsRepository)
@injectable
class DrawerMenuItemsRepositoryImpl implements DrawerMenuItemsRepository {
  final DrawerMenuItemsRemoteDataSource drawerMenuItemsRemoteDataSource;

  DrawerMenuItemsRepositoryImpl(
      {required this.drawerMenuItemsRemoteDataSource});
  @override
  Future<List<NewsBoardEntity?>> getNewsBoard(NewsBoardRequest params) async {
    final res = await drawerMenuItemsRemoteDataSource.getNewsBoard(params);
    return res;
  }
}
