import 'package:injectable/injectable.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/data/remote/models/request/academic_comp_id_request.dart';
import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

@injectable
class GetClassInforUseCase
    implements UseCase<List<ClassDetailsEntity?>, WordThoughtRequest> {
  final AcademicRepostory academicRepostory;

  GetClassInforUseCase(this.academicRepostory);
  @override
  Future<List<ClassDetailsEntity?>> call(WordThoughtRequest params) {
    return academicRepostory.getClassDetails(params);
  }
}