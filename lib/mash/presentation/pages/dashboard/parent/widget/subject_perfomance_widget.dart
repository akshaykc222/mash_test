import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubjectPerfomanceWidget extends StatelessWidget {
  const SubjectPerfomanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _title(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) => _listItems(),
          )
        ],
      ),
    );
  }

  Widget _listItems() {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text('Computer'),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 50,
            width: 300,
            color: Colors.amber,
          ),
        )
      ],
    );
  }

  Widget _title() {
    return const Row(
      children: [
        Text('Subject'),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text('Marks'),
          ),
        ),
      ],
    );
  }
}
