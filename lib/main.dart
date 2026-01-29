import 'package:flutter/material.dart';
import 'package:quiz_card/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
