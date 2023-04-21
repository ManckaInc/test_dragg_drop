/// A "target" widget for moving a field with a numerical value.
/// Monitors whether the transferred field matches,
/// changes the text and background colour depending on the correctly transferred field.

import 'package:flutter/material.dart';
import 'package:test_task/utilities/constant.dart';
import 'package:test_task/widgets/reusable_field.dart';

class DragTargetWidget extends StatelessWidget {
  const DragTargetWidget({
    super.key,
    required this.isAccepted,
    required this.onAccept,
    required this.nameFieldDigital,
    required this.nameFieldString,
  });

  final bool isAccepted;
  final VoidCallback onAccept;
  final String nameFieldDigital;
  final String nameFieldString;

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      builder: (context, candidateData, rejectedData) => ReusableField(
        value: 20,
        nameField: isAccepted ? nameFieldDigital : nameFieldString,
        color: isAccepted ? kActiveFieldColour : kInActiveFieldColour,
      ),
      onWillAccept: (data) {
        return data == nameFieldDigital;
      },
      onAccept: (data) {
        onAccept();
      },
    );
  }
}
