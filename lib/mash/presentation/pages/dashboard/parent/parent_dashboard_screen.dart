import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_last_section.dart';
import 'package:mash/mash/presentation/pages/dashboard/parent/widget/parent_dashboard_top_section.dart';

class ParentDashBoard extends StatelessWidget {
  const ParentDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _header(),
          _body(context),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          ParentDashboardTopSection(),
          ParentDashboardLastSection(),
        ],
      ),
    );
  }

  Widget _header() {
    return SliverAppBar(
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/student_dummy.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
