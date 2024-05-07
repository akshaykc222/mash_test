// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dash_board_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordThoughtsHiveModelAdapter extends TypeAdapter<WordThoughtsHiveModel> {
  @override
  final int typeId = 1;

  @override
  WordThoughtsHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WordThoughtsHiveModel(
      statusCode: fields[0] as int,
      statusMessage: fields[1] as String,
      wordTable: (fields[2] as List).cast<WordTableModel>(),
      thoughtTable: (fields[3] as List).cast<ThoughtTableModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, WordThoughtsHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.statusCode)
      ..writeByte(1)
      ..write(obj.statusMessage)
      ..writeByte(2)
      ..write(obj.wordTable)
      ..writeByte(3)
      ..write(obj.thoughtTable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordThoughtsHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ThoughtTableModelAdapter extends TypeAdapter<ThoughtTableModel> {
  @override
  final int typeId = 2;

  @override
  ThoughtTableModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThoughtTableModel(
      thoughtId: fields[0] as double,
      thoughtOfTheDayUrl: fields[1] as String,
      publishedDate: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ThoughtTableModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.thoughtId)
      ..writeByte(1)
      ..write(obj.thoughtOfTheDayUrl)
      ..writeByte(2)
      ..write(obj.publishedDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThoughtTableModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WordTableModelAdapter extends TypeAdapter<WordTableModel> {
  @override
  final int typeId = 3;

  @override
  WordTableModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WordTableModel(
      wordId: fields[0] as double,
      wordName: fields[1] as String,
      wordMeaning1: fields[2] as String,
      wordMeaning2: fields[3] as String,
      hasImg: fields[4] as String,
      wordImage: fields[5] as dynamic,
      status: fields[6] as double,
      compId: fields[7] as double,
      createdBy: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WordTableModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.wordId)
      ..writeByte(1)
      ..write(obj.wordName)
      ..writeByte(2)
      ..write(obj.wordMeaning1)
      ..writeByte(3)
      ..write(obj.wordMeaning2)
      ..writeByte(4)
      ..write(obj.hasImg)
      ..writeByte(5)
      ..write(obj.wordImage)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.compId)
      ..writeByte(8)
      ..write(obj.createdBy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordTableModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
