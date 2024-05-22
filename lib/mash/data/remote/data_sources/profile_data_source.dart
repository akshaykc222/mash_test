import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/profile/student_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';


abstract class ProfileDataSource {
  Future<List<StudentEntity>> getSiblings(String compId);
}


@LazySingleton(as: ProfileDataSource)
@injectable
class ProfileDataSourceImpl extends ProfileDataSource {
  final ApiProvider apiProvider;

  ProfileDataSourceImpl(this.apiProvider);

  @override
  Future<List<StudentEntity>> getSiblings(String compId) async {
    final data = await apiProvider
        .get(AppRemoteRoutes.getSiblings, body: {"P_COMP_ID": compId});
    return List<StudentEntity>.from(
        data['resTable'].map((e) => StudentModel.fromJson(e)));
  }
}
