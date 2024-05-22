import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';

import '../../data/remote/models/request/news_board_request.dart';

abstract interface class DrawerMenuItemsRepository {
  Future<List<NewsBoardEntity?>> getNewsBoard(NewsBoardRequest params);
}
