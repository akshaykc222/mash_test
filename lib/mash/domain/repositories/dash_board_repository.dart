import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/role_menu_request.dart';
import 'package:mash/mash/domain/entities/dashboard/role_menu_entity.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

import '../../data/remote/request/digital_library_request.dart';
import '../entities/dashboard/digital_library_entity.dart';

abstract interface class DashBoardRepository {
  Future<WordThoughtsEntity?> fetchWordandThoghtOfTheDay(
    AcademicAndCompIdRequest wordThoughtRequest,
  );
  Future<List<RoleMenuEntity>> getRolemenuItems(RoleMenuRequest params);
  Future<List<DigitalLibraryEntity>> getDigitalLibrary(
      DigitalLibraryRequest request);
}
