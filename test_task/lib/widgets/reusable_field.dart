import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class ReusableField extends StatelessWidget {
  const ReusableField({
    super.key,
    required this.nameField,
    required this.colour,
    required this.value,
  });
  final String nameField;
  final Color? colour;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        value,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        color: colour,
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
