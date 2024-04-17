import 'package:flutter/material.dart';

PreferredSize commonAppbar({required String title}) => PreferredSize(
    preferredSize: const Size(double.infinity, 60),
    child: AppBar(
      centerTitle: true,
      title: Text(title),
    ));
