import 'package:flutter/material.dart';
import 'package:test_task/screens/first_screen.dart';
import 'package:test_task/screens/second_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'first_screen',
      routes: {
        FirstScreen.id: (context) => const FirstScreen(),
        SecondScreen.id: (context) => const SecondScreen(),
      },
    );
  }
}
