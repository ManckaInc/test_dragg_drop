/// Screen with basic functionality. applications, uses 2 extracted widgets in separate files.

import 'package:flutter/material.dart';
import 'package:test_task/utilities/constant.dart';
import 'package:test_task/widgets/drag_target_widget.dart';
import 'package:test_task/widgets/draggable_widget.dart';
import 'package:test_task/widgets/reusable_field.dart';

class SecondScreen extends StatefulWidget {
  static const id = 'second_screen';
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
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DragTargetWidget(
                      isAccepted: _isAccepted,
                      nameFieldDigital: '1',
                      nameFieldString: 'One',
                      onAccept: () {
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
                        : const DraggableWidget(
                            numberData: '2',
                          ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const <Widget>[
                  SizedBox(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: DragTargetWidget(
                    isAccepted: _isAcceptedTwo,
                    nameFieldDigital: '2',
                    nameFieldString: 'Two',
                    onAccept: () {
                      setState(() {
                        _isAcceptedTwo = true;
                        _isDraggedTwo = true;
                      });
                    },
                  )),
                  Expanded(
                    child: _isDragged
                        ? const SizedBox.shrink()
                        : const DraggableWidget(
                            numberData: '1',
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
