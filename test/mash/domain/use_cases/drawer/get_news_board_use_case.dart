import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/domain/use_cases/drawer_menu_items_repository/get_news_board_usecase.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetNewsBoardUseCase getNewsBoardUseCase;
  late MockDrawerMenuItemsRepository mockDrawerMenuItemsRepository;
  setUp(() {
    mockDrawerMenuItemsRepository = MockDrawerMenuItemsRepository();
    getNewsBoardUseCase = GetNewsBoardUseCase(
        drawerMenuItemsRepository: mockDrawerMenuItemsRepository);
  });
}
