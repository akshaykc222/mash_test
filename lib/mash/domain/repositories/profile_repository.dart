import 'package:injectable/injectable.dart';
import 'package:mash/mash/domain/entities/profile/student_entity.dart';

@factoryMethod
abstract class ProfileRepository {
  Future<List<StudentEntity>> getSiblings(String compId);
}
