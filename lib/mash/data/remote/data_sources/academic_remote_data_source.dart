import 'package:injectable/injectable.dart';
import 'package:mash/core/api_provider.dart';
import 'package:mash/core/pretty_printer.dart';
import 'package:mash/mash/data/remote/models/academic/academic_subjects_model.dart';
import 'package:mash/mash/data/remote/models/academic/class_details_model.dart';
import 'package:mash/mash/data/remote/models/academic/division_details_model.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_models.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_term_model.dart';
import 'package:mash/mash/data/remote/request/academic_comp_id_request.dart';
import 'package:mash/mash/data/remote/request/academic_subjects_request.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import '../../../domain/entities/academic/syllabus_request.dart';


@factoryMethod
abstract interface class AcademicRemoteDataSource {
  Future<List<ClassDetailsModel?>> getClassDetails(
      AcademicAndCompIdRequest params);
  Future<List<AcademicSubjectModel>> getAcademicSubjects(
      ClassAndCompIdRequest params);
  Future<List<DivisionDetailsModel?>> getDivisionDetails(
      ClassAndCompIdRequest params);
  Future<List<SyllabusModel>> getSyllabus(SyllabusRequest params);
  Future<List<SyllabusTermModel?>> getSyllabusTerms(
      SyllabusTermsRequest params);
}

@LazySingleton(as: AcademicRemoteDataSource)
@injectable
class AcademicRemoteDataSourceImpl extends AcademicRemoteDataSource {
  final ApiProvider apiProvider;

  AcademicRemoteDataSourceImpl(this.apiProvider);
  @override
  Future<List<ClassDetailsModel?>> getClassDetails(
      AcademicAndCompIdRequest params) async {
    final data =
        await apiProvider.post(AppRemoteRoutes.classDetails, params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => ClassDetailsModel.fromJson(e)).toList();
  }

  @override
  Future<List<AcademicSubjectModel>> getAcademicSubjects(
      ClassAndCompIdRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.academicSubjects,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => AcademicSubjectModel.fromJson(e)).toList();
  }

  @override
  Future<List<DivisionDetailsModel?>> getDivisionDetails(
      ClassAndCompIdRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.divisionDetails,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => DivisionDetailsModel.fromJson(e)).toList();
  }

  @override
  Future<List<SyllabusModel>> getSyllabus(SyllabusRequest params) async {
    try {
      final data = await apiProvider.get(AppRemoteRoutes.syllabus,
          body: params.toJson());
      final List<dynamic> dataList = data['resTable'];

      return dataList.map((e) => SyllabusModel.fromJson(e)).toList();
    } on Exception catch (e) {
      prettyPrint('errror on data source $e');
      throw Exception(e);
    }
  }

  @override
  Future<List<SyllabusTermModel?>> getSyllabusTerms(
      SyllabusTermsRequest params) async {
    final data = await apiProvider.get(AppRemoteRoutes.syllabusTerms,
        body: params.toJson());
    final List<dynamic> dataList = data['resTable'];

    return dataList.map((e) => SyllabusTermModel.fromJson(e)).toList();
  }
}
// List<T> _convertToDivisionDetailsList<T>(dynamic data, T Function(Map<String, dynamic>) fromJson) {
//   return (data['resTable'] as List<dynamic>).map((e) => fromJson(e as Map<String, dynamic>)).toList();
// }
