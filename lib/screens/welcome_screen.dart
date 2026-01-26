import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quiz_card/widgets/app_button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Background color only
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFF3E5F5),
          ),
          // 🌸 Left tilted flower
          Positioned(
            top: 185,
            left: 7,
            child: Transform.rotate(
              angle: -pi / 5,
              child: Image.asset(
                'assets/flower.png',
                width: 190,
              ),
            ),
          ),

          // 🌸 Right tilted flower
          Positioned(
            top: 185,
            right: 13,
            child: Transform.rotate(
              angle: pi / 5,
              child: Image.asset(
                'assets/flower.png',
                width: 190,
              ),
            ),
          ),

          // 🦁 Lion (center top)
          Positioned(
            top: 80,
            left: size.width / 2 - 145,
            child: Image.asset(
              'assets/lion.png',
              width: 280,
            ),
          ),

          // 🌺 Bottom flower cluster (overlapping like design)
          Positioned(
            bottom: 90,
            left: -40,
            child: SizedBox(
              width: 420,
              height: 220,
              child: Stack(
                clipBehavior: Clip.none,
                children: [

                  // Left flower
                  Positioned(
                    left: -65,
                    bottom: -190,
                    child: Transform.rotate(
                      angle: -pi / 150,
                      child: Image.asset(
                        'assets/flower.png',
                        width: 350,
                      ),
                    ),
                  ),

                  // Right flower
                  Positioned(
                    left: 220,
                    bottom: -190,
                    child: Transform.rotate(
                      angle: pi / 150,
                      child: Image.asset(
                        'assets/flower.png',
                        width: 350,
                      ),
                    ),
                  ),

                  // Middle flower (on top)
                  Positioned(
                    left: 90,
                    bottom: -240,
                    child: Transform.rotate(
                      angle: -pi / 150,
                      child: Image.asset(
                        'assets/flower.png',
                        width: 330,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Spacer(),
                  const Text(
                    'Mystic Deck',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A1B9A),
                    ),
                  ),
                  const SizedBox(height: 9),

                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed diam nonummy nibh euismod tincidunt ut laoreet dolore '
                        'magna aliquam erat volutpat. Lorem ipsum dolor sit amet',
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF7A1FA0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 42),

                  AppButton(
                    text: 'Login into existing account',
                    backgroundColor: const Color(0xFF7B1FA2),
                    textColor: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'Or',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  AppButton(
                    text: 'Don’t have an account? Sign up',
                    backgroundColor: const Color(0xFFE1BEE7),
                    textColor: Color(0xFF4A148C),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 220),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}