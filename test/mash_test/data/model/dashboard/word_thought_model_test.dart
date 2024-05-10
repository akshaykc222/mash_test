import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';

void main() {
  test('should be a subclass of auth entity', () {
    //assert
    expect(tWordThoughtModel, isA<WordThoughtsModel>());
  });
  group('testing from json and to json', () {
    test('''Should successfully deserialize a JSON map into a WordThoughtModel
          object and ensure that the resulting 
          object matches the expected tWordThoughtModel''', () {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('dashboard/word_thought_response.json'));
      //act
      final result = WordThoughtsModel.fromJson(jsonMap);
      //assert
      expect(result, tWordThoughtModel);
    });
  });
}
