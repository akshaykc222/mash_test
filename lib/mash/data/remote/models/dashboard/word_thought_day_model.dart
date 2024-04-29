import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

class WordThoughtsModel extends WordThoughtsEntity {
  const WordThoughtsModel({
    required super.statusCode,
    required super.statusMessage,
    required super.wordTable,
    required super.thoughtTable,
  });
  factory WordThoughtsModel.fromJson(Map<String, dynamic> json) =>
      WordThoughtsModel(
        statusCode: json["statusCode"],
        statusMessage: json["statusMessage"],
        wordTable: List<WordTableModel>.from(
            json["wordTable"].map((x) => WordTableModel.fromJson(x))),
        thoughtTable: List<ThoughtTable>.from(
            json["thoughtTable"].map((x) => ThoughtTable.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "statusMessage": statusMessage,
        "wordTable": List<dynamic>.from(wordTable.map((x) => x.toJson())),
        "thoughtTable": List<dynamic>.from(thoughtTable.map((x) => x.toJson())),
      };
}

class ThoughtTableModel extends ThoughtTableEntity {
  ThoughtTableModel({
    required super.thoughtId,
    required super.thoughtOfTheDayUrl,
    required super.publishedDate,
  });
}

class WordTableModel extends WordTableEntity {
  const WordTableModel({
    required super.wordId,
    required super.wordName,
    required super.wordMeaning1,
    required super.wordMeaning2,
    required super.hasImg,
    required super.wordImage,
    required super.status,
    required super.compId,
    required super.createdBy,
  });
  factory WordTableModel.fromJson(Map<String, dynamic> json) => WordTableModel(
        wordId: json["WORD_ID"],
        wordName: json["WORD_NAME"],
        wordMeaning1: json["WORD_MEANING1"],
        wordMeaning2: json["WORD_MEANING2"],
        hasImg: json["HAS_IMG"],
        wordImage: json["WORD_IMAGE"],
        status: json["STATUS"],
        compId: json["COMP_ID"],
        createdBy: json["CREATED_BY"],
      );

  Map<String, dynamic> toJson() => {
        "WORD_ID": wordId,
        "WORD_NAME": wordName,
        "WORD_MEANING1": wordMeaning1,
        "WORD_MEANING2": wordMeaning2,
        "HAS_IMG": hasImg,
        "WORD_IMAGE": wordImage,
        "STATUS": status,
        "COMP_ID": compId,
        "CREATED_BY": createdBy,
      };
}
