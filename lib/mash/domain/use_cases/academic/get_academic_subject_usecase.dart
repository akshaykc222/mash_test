import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/academic_subjects_request.dart';
import 'package:mash/mash/domain/entities/academic/academic_subject_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

@injectable
@lazySingleton
class GetAcademicSubjectUseCase
    implements UseCase<List<AcademicSubjectEntity?>, AcademicSubjectRequests> {
  final AcademicRepostory academicRepostory;

  GetAcademicSubjectUseCase({required this.academicRepostory});
  @override
  Future<List<AcademicSubjectEntity?>> call(AcademicSubjectRequests params) {
    return academicRepostory.getAcademicSubjects(params);
  }
}