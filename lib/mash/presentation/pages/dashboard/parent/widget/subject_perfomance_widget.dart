import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mash/mash/presentation/pages/home/widgets/progress_indicator_widget.dart';
import 'package:mash/mash/presentation/utils/app_constants.dart';
import 'package:mash/mash/presentation/utils/enums.dart';

class SubjectPerfomanceWidget extends StatelessWidget {
  const SubjectPerfomanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(),
        spacer20,
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) => _listItems(),
          separatorBuilder: (context, index) => spacer10,
        )
      ],
    );
  }

  Widget _listItems() {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            'Computer',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: ProgressIndicatorWidget(
            initialValue: 0.3,
            progressIndicatorType: ProgressIndicatorType.linear,
          ),
        )
      ],
    );
  }

  Widget _title() {
    return const Row(
      children: [
        Text(
          'Subject',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Marks',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
