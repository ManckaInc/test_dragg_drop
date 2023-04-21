/// Extracted numeric name widget to be dragged onto the required field with the lowercase name.

import 'package:flutter/material.dart';
import 'package:test_task/utilities/constant.dart';
import 'package:test_task/widgets/reusable_field.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({
    super.key,
    required this.numberData,
  });

  final String numberData;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: numberData,
      feedback: SizedBox(
        height: 200,
        width: 150,
        child: Material(
          child: ReusableField(
            value: 0,
            nameField: numberData,
            color: kInActiveFieldColour,
          ),
        ),
      ),
      childWhenDragging: const SizedBox(),
      child: ReusableField(
        value: 20,
        nameField: numberData,
        color: kActiveFieldColour,
      ),
    );
  }
}
