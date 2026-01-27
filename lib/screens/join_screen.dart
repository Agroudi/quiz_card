import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quiz_card/screens/home_screen.dart';
import 'package:quiz_card/screens/welcome_screen.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/app_formfield.dart';
import 'package:quiz_card/widgets/app_button.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _roomCodeController = TextEditingController();

  @override
  void dispose() {
    _roomCodeController.dispose();
    super.dispose();
  }

  void _joinRoom() {
    if (_formKey.currentState!.validate()) {
      // ✅ Valid room code
      debugPrint('Joining room: ${_roomCodeController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Mystic Deck', onBack: () => {Navigator.push(
          context, MaterialPageRoute(builder: (_) => HomeScreen()))}, onMenu: () => ()),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFF3E5F5),
          ),

          // = FORM =
          Positioned(
            top: 420,
            left: 24,
            right: 24,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  DefaultFormField(
                    controller: _roomCodeController,
                    label: 'Room Code',
                    hintText: 'Enter 5-digit code',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Room code can’t be empty';
                      }
                      if (!RegExp(r'^\d+$').hasMatch(value)) {
                        return 'Only numbers are allowed';
                      }
                      if (value.length != 5) {
                        return 'Room code must be exactly 5 digits';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  AppButton(
                    onTap: _joinRoom,
                    text: 'Join Room',
                    backgroundColor: const Color(0xFF7A1FA0),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          // ========================================

          // Left kite
          Positioned(
            height: 120,
            width: 120,
            left: 15,
            top: 150,
            child: Transform.rotate(
              angle: -pi / -10,
              child: Image.asset('assets/kite.png'),
            ),
          ),

          // Center kite
          Positioned(
            height: 330,
            width: 330,
            right: 15,
            top: 40,
            child: Transform.rotate(
              angle: pi / 5,
              child: Image.asset('assets/kite.png'),
            ),
          ),

          // Right kite
          Positioned(
            height: 120,
            width: 120,
            right: 50,
            top: 300,
            child: Transform.rotate(
              angle: pi / 3,
              child: Image.asset('assets/kite.png'),
            ),
          ),

          // Bottom flower cluster
          Positioned(
            bottom: 90,
            left: -40,
            child: SizedBox(
              width: 420,
              height: 220,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
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
        ],
      ),
    );
  }
}