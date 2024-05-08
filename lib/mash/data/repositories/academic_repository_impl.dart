import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/academic_remote_data_source.dart';
import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';
import 'package:mash/mash/domain/repositories/academic_repository.dart';

import '../remote/models/request/academic_comp_id_request.dart';

@LazySingleton(as: AcademicRepostory)
@injectable
class AcademicRepositoryImple implements AcademicRepostory {
  final AcademicRemoteDataSource academicRemoteDataSource;

  AcademicRepositoryImple(this.academicRemoteDataSource);

  @override
  Future<List<ClassDetailsEntity?>> getClassDetails(
      WordThoughtRequest params) async {
    return await academicRemoteDataSource.getClassDetails(params);
  }
}