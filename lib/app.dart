import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_theme.dart';

import 'mash/presentation/router/router_config.dart';

class MashApp extends StatelessWidget {
  const MashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: AppThemes.mainTheme,
      routerConfig: AppRouteManager.router,
      debugShowCheckedModeBanner: false,
      
    );
  }
}
