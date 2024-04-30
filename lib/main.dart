import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'di/injector.dart';

void main() async {
  configureDependencies();
  await Hive.initFlutter();
  runApp(const MashApp());
}
