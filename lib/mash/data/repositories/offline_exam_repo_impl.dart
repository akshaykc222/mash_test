

import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/offline_exam_data_source.dart';
import 'package:mash/mash/data/remote/models/request/get_exam_terms_detail_request.dart';
import 'package:mash/mash/data/remote/models/request/get_offline_exam_time_table_request.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_time_table_term_entity.dart';
import 'package:mash/mash/domain/entities/offline_time_table/offline_timetable_entity.dart';
import 'package:mash/mash/domain/repositories/time_table_repository.dart';


@LazySingleton(as: TimeTableRepository)
@injectable
class OfflineExamRepoImpl extends TimeTableRepository{
final OfflineExamDataSource dataSource;


OfflineExamRepoImpl(this.dataSource);

  @override
  Future<List<OfflineTimeTableTermEntity>> getOfflineExamTerms(ExamTermDetailRequest request) {
    return dataSource.getOfflineExamTerms(request);
  }

  @override
  Future<List<OfflineExamTimeTableEntity>> getOfflineTimeTable(ExamTimeTableRequest request) {
    return dataSource.getOfflineTimeTable(request);
  }
}