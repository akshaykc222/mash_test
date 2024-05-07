import 'package:mash/mash/domain/entities/academic/class_details_entity.dart';

class ClassDetailsModel extends ClassDetailsEntity {
  const ClassDetailsModel({
    required super.className,
    required super.classId,
    required super.academicId,
    required super.noSeats,
    required super.order,
    required super.mediumId,
    required super.isActive,
  });
}
