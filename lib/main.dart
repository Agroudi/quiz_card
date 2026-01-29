import 'package:flutter/material.dart';
import 'package:quiz_card/screens/select_screen.dart';
import 'package:quiz_card/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter-Regular'),
        debugShowCheckedModeBanner: false,
        home: SelectScreen());
  }
}