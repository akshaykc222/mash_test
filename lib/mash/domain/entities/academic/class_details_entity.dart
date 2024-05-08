import 'package:equatable/equatable.dart';

class ClassDetailsEntity extends Equatable {
  final String? className;
  final double? classId;
  final double? academicId;
  final double? noSeats;
  final double? order;
  final double? mediumId;
  final double? isActive;

  const ClassDetailsEntity({
    required this.className,
    required this.classId,
    required this.academicId,
    required this.noSeats,
    required this.order,
    required this.mediumId,
    required this.isActive,
  });

  @override
  List<Object?> get props => [classId];
}
