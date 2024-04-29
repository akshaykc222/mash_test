import 'package:equatable/equatable.dart';

class WordThoughtsEntity extends Equatable {
  final int statusCode;
  final String statusMessage;
  final List<WordTable> wordTable;
  final List<ThoughtTable> thoughtTable;

  const WordThoughtsEntity({
    required this.statusCode,
    required this.statusMessage,
    required this.wordTable,
    required this.thoughtTable,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}

class ThoughtTable extends Equatable {
  final int thoughtId;
  final String thoughtOfTheDayUrl;
  final String publishedDate;

  const ThoughtTable({
    required this.thoughtId,
    required this.thoughtOfTheDayUrl,
    required this.publishedDate,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}

class WordTable extends Equatable {
  final int wordId;
  final String wordName;
  final String wordMeaning1;
  final String wordMeaning2;
  final String hasImg;
  final dynamic wordImage;
  final int status;
  final int compId;
  final String createdBy;

  const WordTable({
    required this.wordId,
    required this.wordName,
    required this.wordMeaning1,
    required this.wordMeaning2,
    required this.hasImg,
    required this.wordImage,
    required this.status,
    required this.compId,
    required this.createdBy,
  });

  factory WordTable.fromJson(Map<String, dynamic> json) => WordTable(
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

  @override
  List<Object?> get props => throw UnimplementedError();
}
