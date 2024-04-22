import 'package:flutter/material.dart';

import 'app.dart';
import 'di/injector.dart';

void main() {
  configureDependencies();
  runApp(const MashApp());
}
