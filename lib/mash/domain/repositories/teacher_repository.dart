import '../../data/remote/models/request/teacher_rating_request.dart';
import '../entities/teacher_rating/teacher_rating_api_entity.dart';

abstract class TeacherRepository{
  Future<List<TeacherRatingEntity>>  getTeacherRatings(TeacherRatingRequest request);
}