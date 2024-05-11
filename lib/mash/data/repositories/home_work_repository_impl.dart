import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/home_work_notes_data_source.dart';
import 'package:mash/mash/domain/entities/notes/notes_report_model.dart';
import 'package:mash/mash/domain/repositories/home_work_notes_repository.dart';
import 'package:mash/mash/data/remote/models/request/home_work_report_request.dart';
import 'package:mash/mash/domain/entities/home_work/home_work_entity.dart';

@LazySingleton(as: HomeWorkNotesRepository)
@injectable
class HomeWorkNotesReportRepositoryImpl implements HomeWorkNotesRepository {
  final HomeWorkNotesRemoteDataSource homeWorkNotesRemoteDataSource;

  HomeWorkNotesReportRepositoryImpl({
    required this.homeWorkNotesRemoteDataSource,
  });
  @override
  Future<List<HomeWorkReportsEntity?>> getHomeWorkReports(
      HomeWorkReportRequest params) async {
    return homeWorkNotesRemoteDataSource.getHomeWorkReports(params);
  }

  @override
  Future<List<NotesReportEntity?>> getNoteReports(
      HomeWorkReportRequest params) async {
    return homeWorkNotesRemoteDataSource.getNoteReports(params);
  }
}
