import 'package:mash/mash/data/remote/models/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/entities/academic/academic_subject_entity.dart';
import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';

import '../../data/remote/models/request/academic_comp_id_request.dart';

abstract interface class AcademicRepostory {
  Future<List<ClassDetailsEntity?>> getClassDetails(
      AcademicAndCompIdRequest params);
  Future<List<AcademicSubjectEntity>> getAcademicSubjects(
      AcademicSubjectRequests params);
}
