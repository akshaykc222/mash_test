import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mash/core/hive_service.dart';
import 'package:mash/mash/data/remote/routes/local_storage_name.dart';
import 'package:mash/mash/presentation/router/app_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    // final token = await HiveService().getBox(boxName: LocalStorageNames.token);
    // log(token.values.toString());
    // if (token.isNotEmpty) {
    //   context.pushNamed(AppPages.home);
    // } else {
    // context.pushNamed(AppPages.login);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Splash screen",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
