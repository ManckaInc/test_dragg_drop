import 'package:flutter/material.dart';
import 'package:test_task/screens/second_screen.dart';
import 'package:test_task/utilities/constant.dart';

class FirstScreen extends StatefulWidget {
  static const id = 'first_screen';
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              ),
            );
          },
          style: kFirstScreenBTNStyle,
          child: const Text(
            'Go to Second screen',
            style: kFirstScreenButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
