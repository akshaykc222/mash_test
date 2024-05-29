import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/home/feesAndPayment/widgets/fees_and_payments_tabs.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/drawer_widget.dart';

class FeesAndPaymentMainScreen extends StatelessWidget {
  const FeesAndPaymentMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppStrings.feesAndPaymentScreen),
          bottom: const TabBar(
            tabs: [
              Tab(text: AppStrings.pending),
              Tab(text: AppStrings.paid),
            ],
          ),
        ),
        endDrawer: DrawerWidget(),
        body: const FeesAndPaymentsTabs(),
      ),
    );
  }
}
