import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_card/screens/home_screen.dart';
import 'package:quiz_card/widgets/app_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const Color primaryPurple = Color(0xFF6A1B9A);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF3E5F5),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Stack(
              children: [
                // 🌸 Left tilted flower (UNCHANGED)
                Positioned(
                  top: 145,
                  left: -17,
                  child: Transform.rotate(
                    angle: -pi / 5,
                    child: Image.asset(
                      'assets/flower.png',
                      width: 190,
                    ),
                  ),
                ),

                // 🌸 Right tilted flower (UNCHANGED)
                Positioned(
                  top: 145,
                  right: -13,
                  child: Transform.rotate(
                    angle: pi / 5,
                    child: Image.asset(
                      'assets/flower.png',
                      width: 190,
                    ),
                  ),
                ),

                // 🦁 Lion (UNCHANGED)
                Positioned(
                  top: 40,
                  left: size.width / 2 - 165,
                  child: Image.asset(
                    'assets/lion.png',
                    width: 280,
                  ),
                ),

                // 🔹 Main content
                Padding(
                  padding: const EdgeInsets.only(top: 325),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Mystic Deck',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: primaryPurple,
                          ),
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

                      const SizedBox(height: 20),

                      // Email
                      const Text(
                        "Email ID",
                        style: TextStyle(
                          fontSize: 17,
                          color: primaryPurple,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter your email",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(9)),
                            borderSide:
                            BorderSide(color: primaryPurple, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(9)),
                            borderSide:
                            BorderSide(color: primaryPurple, width: 1.8),
                          ),
                        ),
                      ),

                      const SizedBox(height: 21),

                      // Password
                      const Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 17,
                          color: primaryPurple,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter your password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(9)),
                            borderSide:
                            BorderSide(color: primaryPurple, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(9)),
                            borderSide:
                            BorderSide(color: primaryPurple, width: 1.8),
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            color: primaryPurple,
                          ),
                        ),
                      ),

                      const SizedBox(height: 2),

                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot your Password?",
                          style: TextStyle(
                            fontSize: 12,
                            color: primaryPurple,
                          ),
                        ),
                      ),

                      const SizedBox(height: 17),
                      
                      AppButton(onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                          text: 'Log In',
                          backgroundColor: Color(0xFF7A1FA0),
                          textColor: Colors.white),

                      SizedBox(height: 36),

                      Row(
                        children: const [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Or Login with",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.google,
                            size: 48,
                            color: primaryPurple,
                          ),
                          SizedBox(width: 50),
                          Icon(
                            Icons.apple,
                            size: 64,
                            color: primaryPurple,
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}