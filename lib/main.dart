import 'package:flutter/material.dart';
import 'package:quiz_card/screens/explore_screen.dart';
import 'package:quiz_card/screens/home_screen.dart';
import 'package:quiz_card/screens/join_screen.dart';
import 'package:quiz_card/screens/login_screen.dart';
import 'package:quiz_card/screens/score_screen.dart';
import 'package:quiz_card/screens/signup_screen.dart';
import 'package:quiz_card/screens/splash_screen.dart';
import 'package:quiz_card/screens/waiting_screen.dart';

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
