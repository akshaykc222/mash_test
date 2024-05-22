
import 'package:flutter/material.dart';
import 'package:mash/mash/presentation/utils/app_strings.dart';
import 'package:mash/mash/presentation/widgets/common_appbar.dart';

class PhysicalLibraryFilterScreen extends StatelessWidget {
  const PhysicalLibraryFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title:AppStrings.filter),
      body: const FilterBody(),
    );
  }
}

class FilterBody extends StatelessWidget {
  const FilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child:const Column(
        children: [

        ],
      ),
    );
  }
}
