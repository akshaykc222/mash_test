import 'package:hive/hive.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
part 'dash_board_hive_model.g.dart';

@HiveType(typeId: 1)
class WordThoughtsHiveModel extends WordThoughtsEntity {
  @HiveField(0)
  final int statusCode;

  @HiveField(1)
  final String statusMessage;

  @HiveField(2)
  final List<WordTableModel> wordTable;

  @HiveField(3)
  final List<ThoughtTableModel> thoughtTable;

  const WordThoughtsHiveModel({
    required this.statusCode,
    required this.statusMessage,
    required this.wordTable,
    required this.thoughtTable,
  }) : super(
          statusCode: statusCode,
          statusMessage: statusMessage,
          thoughtTable: thoughtTable,
          wordTable: wordTable,
        );
  factory WordThoughtsHiveModel.fromEnity(WordThoughtsEntity entity) =>
      WordThoughtsHiveModel(
        statusCode: entity.statusCode,
        statusMessage: entity.statusMessage,
        wordTable: List<WordTableModel>.from(entity.wordTable.map((e) =>
            WordTableModel(
                compId: e.compId,
                createdBy: e.createdBy,
                hasImg: e.hasImg,
                status: e.status,
                wordId: e.wordId,
                wordImage: e.wordImage,
                wordMeaning1: e.wordMeaning1,
                wordMeaning2: e.wordMeaning2,
                wordName: e.wordName))),
        thoughtTable: List<ThoughtTableModel>.from(entity.thoughtTable.map(
            (e) => ThoughtTableModel(
                thoughtId: e.thoughtId,
                thoughtOfTheDayUrl: e.thoughtOfTheDayUrl,
                publishedDate: e.publishedDate))),
      );
}

@HiveType(typeId: 2)
class ThoughtTableModel extends ThoughtTableEntity {
  @HiveField(0)
  final double thoughtId;

  @HiveField(1)
  final String thoughtOfTheDayUrl;

  @HiveField(2)
  final String publishedDate;

  ThoughtTableModel(
      {required this.thoughtId,
      required this.thoughtOfTheDayUrl,
      required this.publishedDate})
      : super(
          publishedDate: publishedDate,
          thoughtId: thoughtId,
          thoughtOfTheDayUrl: thoughtOfTheDayUrl,
        );
}

@HiveType(typeId: 3)
class WordTableModel extends WordTableEntity {
  @HiveField(0)
  final double wordId;

  @HiveField(1)
  final String wordName;

  @HiveField(2)
  final String wordMeaning1;

  @HiveField(3)
  final String wordMeaning2;

  @HiveField(4)
  final String hasImg;

  @HiveField(5)
  final dynamic wordImage;

  @HiveField(6)
  final double status;

  @HiveField(7)
  final double compId;

  @HiveField(8)
  final String createdBy;

  WordTableModel({
    required this.wordId,
    required this.wordName,
    required this.wordMeaning1,
    required this.wordMeaning2,
    required this.hasImg,
    required this.wordImage,
    required this.status,
    required this.compId,
    required this.createdBy,
  }) : super(
            compId: compId,
            createdBy: createdBy,
            hasImg: hasImg,
            status: status,
            wordId: wordId,
            wordImage: wordImage,
            wordMeaning1: wordMeaning1,
            wordMeaning2: wordMeaning2,
            wordName: wordName);
}
