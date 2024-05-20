
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';
import 'package:mash/mash/presentation/widgets/side_drawer.dart';

class TransportationMainScreen extends StatelessWidget {
  const TransportationMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: commonAppbar(title: AppStrings.transportation),
      body: const TransportationBody(),
    );
  }
}

class TransportationBody extends StatelessWidget {
  const TransportationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
