import 'package:mash/mash/data/remote/request/add_on_request.dart';

import '../entities/add_on/add_on_entity.dart';

abstract class HomeRepository {
  Future<List<AddOnEntity>> getAddon(AddOnRequest params);
}
