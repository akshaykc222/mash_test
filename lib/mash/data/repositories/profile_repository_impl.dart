import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/profile_data_source.dart';
import 'package:mash/mash/data/remote/models/request/get_user_details_request.dart';
import 'package:mash/mash/domain/entities/profile/student_detail_entity.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';
import 'package:mash/mash/domain/repositories/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
@injectable
class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileDataSource profileDataSource;

  ProfileRepositoryImpl(this.profileDataSource);

  @override
  Future<List<StudentEntity>> getSiblings(String compId) {
    return profileDataSource.getSiblings(compId);
  }

  @override
  Future<StudentDetailEntity> getUserDetails(GetUserDetailsRequest request) {
    return profileDataSource.getUserDetails(request);
  }
}
