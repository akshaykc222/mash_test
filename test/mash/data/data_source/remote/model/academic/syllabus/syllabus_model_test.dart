import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';

import '../../../../../../fixture/constant_objects.dart';

void main() {
  test('should be a subclass of syllabus entity', () {
    expect(tSyllabusModel, isA<SyllabusEntity>());
  });
}
