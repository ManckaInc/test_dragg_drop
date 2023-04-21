/// Widget template of 4 application fields, with a set of styles and text.

import 'package:flutter/material.dart';
import 'package:test_task/utilities/constant.dart';

class ReusableField extends StatelessWidget {
  const ReusableField({
    super.key,
    required this.nameField,
    required this.color,
    required this.value,
  });
  final String nameField;
  final Color? color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        value,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: color,
      ),
      child: Center(
        child: Text(
          nameField,
          style: kSecondScreenFieldsTextStyle,
        ),
      ),
    );
  }
}
