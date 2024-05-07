import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/academic/class_details_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import '../../../domain/entities/academic/class_details_entity.dart';
import '../models/request/academic_comp_id_request.dart';

abstract interface class AcademicRemoteDataSource {
  Future<List<ClassDetailsModel?>> getClassDetails(WordThoughtRequest params);
}

class AcademicRemoteDataSourceImpl implements AcademicRemoteDataSource {
  final ApiProvider apiProvider;

  AcademicRemoteDataSourceImpl(this.apiProvider);
  @override
  Future<List<ClassDetailsModel?>> getClassDetails(
      WordThoughtRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.classDetails, params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => ClassDetailsModel.fromJson(e)).toList();
  }
}
