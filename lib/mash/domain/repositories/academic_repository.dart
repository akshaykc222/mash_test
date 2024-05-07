import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';

import '../../data/remote/models/request/academic_comp_id_request.dart';

abstract interface class AcademicRepostory {
  Future<List<ClassDetailsEntity?>> getClassDetails(WordThoughtRequest params);
}
