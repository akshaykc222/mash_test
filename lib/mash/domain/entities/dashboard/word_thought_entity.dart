import 'package:equatable/equatable.dart';

class WordThoughtsEntity extends Equatable {
  final int statusCode;
  final String statusMessage;
  final List<WordTableEntity> wordTable;
  final List<ThoughtTableEntity> thoughtTable;

  const WordThoughtsEntity({
    required this.statusCode,
    required this.statusMessage,
    required this.wordTable,
    required this.thoughtTable,
  });

  @override
  List<Object?> get props =>
      [statusCode, statusMessage, wordTable, thoughtTable];
}

class ThoughtTableEntity extends Equatable {
  final double thoughtId;
  final String thoughtOfTheDayUrl;
  final String publishedDate;

  const ThoughtTableEntity({
    required this.thoughtId,
    required this.thoughtOfTheDayUrl,
    required this.publishedDate,
  });

  @override
  List<Object?> get props => [thoughtId, thoughtOfTheDayUrl, publishedDate];
}

class WordTableEntity extends Equatable {
  final double wordId;
  final String wordName;
  final String wordMeaning1;
  final String wordMeaning2;
  final String hasImg;
  final dynamic wordImage;
  final double status;
  final double compId;
  final String createdBy;

  const WordTableEntity({
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

  @override
  List<Object?> get props => [
        wordId,
        wordName,
        wordMeaning1,
        wordMeaning2,
        hasImg,
        wordImage,
        status,
        compId,
        createdBy
      ];
}
