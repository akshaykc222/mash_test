import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class HiveService {
  Future<Box<T>> getBox<T>({required String boxName}) async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<T>(boxName);
    } else {
      return await Hive.openBox<T>(boxName);
    }
  }

  isExists({required String boxName}) async {
    final openBox = await getBox(boxName: boxName);
    int length = openBox.length;
    return length != 0;
  }

  addBoxes<T>(List<T> items, String boxName) async {
    final openBox = await getBox<T>(boxName: boxName);
    final existingItems = openBox.values.toList();
    log('existing values $existingItems}');
    for (var item in items) {
      if (existingItems.contains(item)) {
        // prettyPrint(msg: "item exits $item");
      } else {
        // prettyPrint(msg: "item added $item");
        final res = openBox.add(item);
        log('box res $res');
      }
    }
  }

  clearAllValues<T>(String boxName) async {
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
