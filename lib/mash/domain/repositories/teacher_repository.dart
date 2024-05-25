import 'package:mash/mash/data/remote/models/request/teacher_rating_questions_request.dart';
import 'package:mash/mash/domain/entities/teacher_rating/teacher_rating_questions_entity.dart';

import '../../data/remote/models/request/teacher_rating_request.dart';
import '../entities/teacher_rating/teacher_rating_api_entity.dart';

abstract class TeacherRepository{
  Future<List<TeacherRatingEntity>>  getTeacherRatings(TeacherRatingRequest request);
  Future<List<TeacherRatingQuestionsEntity>>  getTeacherRatingQuestions(TeacherRatingQuestionsRequest request);
}