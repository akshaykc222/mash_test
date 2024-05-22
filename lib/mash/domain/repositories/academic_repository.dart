import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';
import 'package:mash/mash/domain/entities/academic/division_details_entity.dart';

import '../../data/remote/models/request/academic_comp_id_request.dart';
import '../../data/remote/models/request/academic_subjects_request.dart';
import '../entities/academic/academic_subject_entity.dart';

/// Interface for accessing academic data in the repository.
abstract interface class AcademicRepository {
  /// Fetches class details based on parameters.
  //
  Future<List<ClassDetailsEntity?>> getClassDetails(
      AcademicAndCompIdRequest params);
  //
  /// Fetches academic subjects based on parameters.
  //
  Future<List<AcademicSubjectEntity>> getAcademicSubjects(
      ClassAndCompIdRequest params);

  ///Fetches divistion  details
  //
  Future<List<DivisionEntityDetailsEnitity?>> getDivisionDetails(
      ClassAndCompIdRequest params);
}
