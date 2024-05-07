import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

class WordThoughtsModel extends WordThoughtsEntity {
  const WordThoughtsModel({
    required int statusCode,
    required String statusMessage,
    required List<WordTableEntity> wordTable,
    required List<ThoughtTableEntity> thoughtTable,
  }) : super(
          statusCode: statusCode,
          statusMessage: statusMessage,
          wordTable: wordTable,
          thoughtTable: thoughtTable,
        );

  factory WordThoughtsModel.fromJson(Map<String, dynamic> json) =>
      WordThoughtsModel(
        statusCode: json['statusCode'] as int,
        statusMessage: json['statusMessage'] as String,
        wordTable: (json['wordTable'] as List<dynamic>)
            .map((e) => WordTableModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        thoughtTable: (json['thoughtTable'] as List<dynamic>)
            .map((e) => ThoughtTableModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}

class ThoughtTableModel extends ThoughtTableEntity {
  const ThoughtTableModel({
    required double thoughtId,
    required String thoughtOfTheDayUrl,
    required String publishedDate,
  }) : super(
          thoughtId: thoughtId,
          thoughtOfTheDayUrl: thoughtOfTheDayUrl,
          publishedDate: publishedDate,
        );

  factory ThoughtTableModel.fromJson(Map<String, dynamic> json) =>
      ThoughtTableModel(
        thoughtId: json['THOUGHT_ID'] as double,
        thoughtOfTheDayUrl: json['THOUGHT_OF_THE_DAY_URL'] as String,
        publishedDate: json['PUBLISHED_DATE'] as String,
      );

  Map<String, dynamic> toJson() => {
        'THOUGHT_ID': thoughtId,
        'THOUGHT_OF_THE_DAY_URL': thoughtOfTheDayUrl,
        'PUBLISHED_DATE': publishedDate,
      };
}

class WordTableModel extends WordTableEntity {
  const WordTableModel({
    required double wordId,
    required String wordName,
    required String wordMeaning1,
    required String wordMeaning2,
    required String hasImg,
    required dynamic wordImage,
    required double status,
    required double compId,
    required String createdBy,
  }) : super(
          wordId: wordId,
          wordName: wordName,
          wordMeaning1: wordMeaning1,
          wordMeaning2: wordMeaning2,
          hasImg: hasImg,
          wordImage: wordImage,
          status: status,
          compId: compId,
          createdBy: createdBy,
        );

  factory WordTableModel.fromJson(Map<String, dynamic> json) => WordTableModel(
        wordId: json['WORD_ID'] as double,
        wordName: json['WORD_NAME'] as String,
        wordMeaning1: json['WORD_MEANING1'] as String,
        wordMeaning2: json['WORD_MEANING2'] as String,
        hasImg: json['HAS_IMG'] as String,
        wordImage: json['WORD_IMAGE'],
        status: json['STATUS'] as double,
        compId: json['COMP_ID'] as double,
        createdBy: json['CREATED_BY'] as String,
      );

  Map<String, dynamic> toJson() => {
        'WORD_ID': wordId,
        'WORD_NAME': wordName,
        'WORD_MEANING1': wordMeaning1,
        'WORD_MEANING2': wordMeaning2,
        'HAS_IMG': hasImg,
        'WORD_IMAGE': wordImage,
        'STATUS': status,
        'COMP_ID': compId,
        'CREATED_BY': createdBy,
      };
}
