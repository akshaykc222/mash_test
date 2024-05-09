import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/mash/data/remote/models/home_work/home_work_model.dart';
import 'package:mash/mash/data/remote/models/notes/notes_report_model.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import '../../../domain/entities/notes/notes_report_model.dart';
import '../models/request/home_work_report_request.dart';

abstract interface class HomeWorkNotesRemoteDataSource {
  Future<List<HomeWorkReportModel>> getHomeWorkReports(
      HomeWorkReportRequest params);
  Future<List<NotesReportEntity?>> getNoteReports(HomeWorkReportRequest params);
}

@LazySingleton(as: HomeWorkNotesRemoteDataSource)
@injectable
class HomeWorkRemoteDataSourceImpl implements HomeWorkNotesRemoteDataSource {
  final ApiProvider apiProvider;

  HomeWorkRemoteDataSourceImpl({required this.apiProvider});
  @override
  Future<List<HomeWorkReportModel>> getHomeWorkReports(
      HomeWorkReportRequest params) async {
    final data = await apiProvider.post(
        AppRemoteRoutes.homeWorkReports, params.toJson());
    final List<dynamic> datalist = data['resTable'];
    return datalist.map((e) => HomeWorkReportModel.fromJson(e)).toList();
  }

  @override
  Future<List<NotesReportModel?>> getNoteReports(
      HomeWorkReportRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.notesReports, params.toJson());
    final List<dynamic> datalist = data['resTable'];
    return datalist.map((e) => NotesReportModel.fromJson(e)).toList();
  }
}
