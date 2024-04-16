

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: AppThemes.mainTheme,
    debugShowCheckedModeBanner: false,
    home: const AddOnScreen(),
  ));
}

class AddOnScreen extends StatelessWidget {
  const AddOnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
