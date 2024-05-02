import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:mash/core/pretty_printer.dart';

@Singleton()
class HiveService {
  Future<Box<T>> getBox<T>({required String boxName}) async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<T>(boxName);
    } else {
      final db = await Hive.openBox<T>(boxName);

      return db;
    }
  }

  isExists({required String boxName}) async {
    final openBox = await getBox(boxName: boxName);
    int length = openBox.length;
    return length != 0;
  }

  Future<void> addBoxes<T>(List<T> items, String boxName) async {
    try {
      final openBox = await getBox<T>(boxName: boxName);
      final existingItems = openBox.values.toList();

      for (var item in items) {
        if (existingItems.contains(item)) {
        } else {
          prettyPrint("msg:  item added $item");
          openBox.add(item);
        }
      }
    } catch (e) {
      prettyPrint('Error in addBoxes: $e');
      throw Exception(e);
    }
  }

  Future<void> clearAllValues<T>(String boxName) async {
    final openBox = await getBox<T>(boxName: boxName);
    await openBox.clear();
  }

  getBoxes<T>(String boxName) async {
    List<T> boxList = <T>[];

    final openBox = await getBox<T>(boxName: boxName);

    int length = openBox.length;

    for (int i = 0; i < length; i++) {
      boxList.add(openBox.getAt(i) as T);
    }

    return boxList;
  }

  deleteBoxes<T>(String boxName, {required int index}) async {
    final openBox = await getBox<T>(boxName: boxName);
    openBox.deleteAt(index);
  }
}
