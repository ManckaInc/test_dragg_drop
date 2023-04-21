import 'package:flutter/material.dart';
import 'package:test_task/utilities/constant.dart';

import '../widgets/reusable_field.dart';

class SecondScreen extends StatefulWidget {
  static const id = 'second_dcreen';
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _isDragged = false;
  bool _isDraggedTwo = false;
  bool _isAccepted = false;
  bool _isAcceptedTwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondScreenBackgroundColorAppBar,
        title: const Text(
          'SECOND SCREEN',
          style: kSecondScreenAppBarTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: DragTarget(
                      builder: (context, candidateData, rejectedData) =>
                          ReusableField(
                        value: 20.0,
                        nameField: _isAccepted ? '1' : 'One',
                        colour: _isAccepted
                            ? kActiveFieldColour
                            : kInActiveFieldColour,
                      ),
                      onWillAccept: (data) {
                        return data == '1';
                      },
                      onAccept: (data) {
                        setState(() {
                          _isAccepted = true;
                          _isDragged = true;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: _isDraggedTwo
                        ? const SizedBox.shrink()
                        : const Draggable(
                            data: '2',
                            feedback: SizedBox(
                              height: 200.0,
                              width: 150.0,
                              child: Material(
                                child: ReusableField(
                                  value: 0.0,
                                  nameField: '2',
                                  colour: kInActiveFieldColour,
                                ),
                              ),
                            ),
                            childWhenDragging: SizedBox(),
                            child: ReusableField(
                              value: 20.0,
                              nameField: '2',
                              colour: kActiveFieldColour,
                            ),
                          ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  SizedBox(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: DragTarget(
                        builder: (context, candidateData, rejectedData) =>
                            ReusableField(
                              value: 20.0,
                              nameField: _isAcceptedTwo ? '2' : 'Two',
                              colour: _isAcceptedTwo
                                  ? kActiveFieldColour
                                  : kInActiveFieldColour,
                            ),
                        onWillAccept: (data) {
                          return data == '2';
                        },
                        onAccept: (data) {
                          setState(() {
                            _isAcceptedTwo = true;
                            _isDraggedTwo = true;
                          });
                        }),
                  ),
                  Expanded(
                    child: _isDragged
                        ? const SizedBox.shrink()
                        : const Draggable(
                            data: '1',
                            feedback: SizedBox(
                              height: 200.0,
                              width: 150.0,
                              child: Material(
                                child: ReusableField(
                                  value: 0.0,
                                  nameField: '1',
                                  colour: kInActiveFieldColour,
                                ),
                              ),
                            ),
                            childWhenDragging: SizedBox(),
                            child: ReusableField(
                              value: 20.0,
                              nameField: '1',
                              colour: kActiveFieldColour,
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
