import 'package:amuz_assignment/constants.dart';
import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String stackArray;

  const SkillWidget({
    Key? key,
    required this.stackArray,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stacks = stackArray.split(",");
    final List<Widget> widgets = stacks
        .map((stack) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: _buildSkillChip(stack),
            ))
        .toList();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(children: widgets),
        ],
      ),
    );
  }
}

Widget _buildSkillChip(String label) {
  return Chip(
    label: Text(label,
        style: const TextStyle(
          fontSize: smallTextSize,
          fontWeight: FontWeight.w500,
        )),
  );
}
