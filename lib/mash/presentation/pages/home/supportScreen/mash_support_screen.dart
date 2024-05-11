

import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class MashSupportScreen extends StatelessWidget {
  const MashSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: AppStrings.mashSupport),
      endDrawer: DrawerWidget(),
      body: supportBody(context),
    );
  }

  supportBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      height:  size.height,
      width: size.width,
    );
  }
}
