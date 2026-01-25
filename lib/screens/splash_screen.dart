import 'dart:math';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _pulseController;
  late AnimationController _floatController;

  @override
  void initState() {
    super.initState();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 12),
    )..repeat();
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _floatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: Listenable.merge([_pulseController, _floatController]),
        builder: (_, __) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF3B1D6A), // deep purple
                  Color(0xFF7A2F8F),
                  Color(0xFFD64ECF), // pink glow
                ],
              ),
            ),
            child: Stack(
              children: [
                ...List.generate(8, (index) {
                  final angle = (_floatController.value * 2 * pi) + index;
                  final radius = 120.0 + (index * 15);
                  return Positioned(
                    left: MediaQuery.of(context).size.width / 2 +
                        cos(angle) * radius -
                        10,
                    top: MediaQuery.of(context).size.height / 2 +
                        sin(angle) * radius -
                        10,
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent.withOpacity(0.6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pinkAccent.withOpacity(0.8),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                  );
                }),

                Center(
                  child: Transform.scale(
                    scale: 1 + (_pulseController.value * 0.08),
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const RadialGradient(
                          colors: [
                            Color(0xFFFFA7F5),
                            Color(0xFF9B3BCF),
                            Color(0xFF3B1D6A),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pinkAccent.withOpacity(0.9),
                            blurRadius: 60,
                            spreadRadius: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
