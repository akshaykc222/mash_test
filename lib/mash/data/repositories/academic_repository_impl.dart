import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/academic_remote_data_source.dart';
import 'package:mash/mash/data/remote/models/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/entities/academic/academic_subject_entity.dart';
import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';
import 'package:mash/mash/domain/entities/academic/syllabus_request.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_term_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

import '../../domain/entities/academic/division_details_entity.dart';
import '../remote/models/request/academic_comp_id_request.dart';

@LazySingleton(as: AcademicRepository)
@injectable
class AcademicRepositoryImpl implements AcademicRepository {
  final AcademicRemoteDataSource academicRemoteDataSource;

  AcademicRepositoryImpl(this.academicRemoteDataSource);

  @override
  Future<List<ClassDetailsEntity?>> getClassDetails(
      AcademicAndCompIdRequest params) async {
    return await academicRemoteDataSource.getClassDetails(params);
  }

  @override
  Future<List<AcademicSubjectEntity>> getAcademicSubjects(
      ClassAndCompIdRequest params) async {
    return await academicRemoteDataSource.getAcademicSubjects(params);
  }

  @override
  Future<List<DivisionEntityDetailsEnitity?>> getDivisionDetails(
      ClassAndCompIdRequest params) async {
    return await academicRemoteDataSource.getDivisionDetails(params);
  }

  @override
  Future<List<SyllabusEntity?>> getSyllabus(SyllabusRequest params) async {
    return await academicRemoteDataSource.getSyllabus(params);
  }

  @override
  Future<List<SyllabusTermEntity?>> getSyllabusTerms(
      SyllabusTermsRequest params) async {
    return await academicRemoteDataSource.getSyllabusTerms(params);
  }
}
