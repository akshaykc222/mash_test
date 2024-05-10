import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/local/data_sources/dash_board_local_data_source.dart';

import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockHiveService mockHiveService;
  late DashBoardLocalDataSource dashBoardLocalDataSource;

  setUp(() {
    mockHiveService = MockHiveService();
    dashBoardLocalDataSource =
        DashBoardLocalDataSourceImpl(hiveService: mockHiveService);
  });
  group('get word thought', () {
    test('should return word thought hive model from hive', () {
      //Arrange

      //Act

      //Assert
    });
  });
}
