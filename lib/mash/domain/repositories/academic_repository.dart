import 'package:mash/mash/domain/entities/academic/class_info_entity.dart';

abstract interface class AcademicRepostory {
  Future<List<ClassInfoEntity>> getClassDetails();
}
