import 'package:mash/mash/data/remote/models/request/home_work_report_request.dart';
import 'package:mash/mash/domain/entities/home_work/home_work_entity.dart';

import '../entities/notes/notes_report_model.dart';

abstract interface class HomeWorkNotesRepository {
  Future<List<HomeWorkReportsEntity>> getHomeWorkReports(
      HomeWorkReportRequest params);
  Future<List<NotesReportEntity?>> getNoteReports(HomeWorkReportRequest params);
}
