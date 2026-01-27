import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_card/screens/home_screen.dart';
import 'package:quiz_card/widgets/app_button.dart';
import 'package:quiz_card/widgets/app_formfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const Color primaryPurple = Color(0xFF7A1FA0);

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
                // left flower
                Positioned(
                  top: 145,
                  left: -17,
                  child: Transform.rotate(
                    angle: -pi / 5,
                    child: Image.asset('assets/flower.png', width: 190),
                  ),
                ),

                // right flower
                Positioned(
                  top: 145,
                  right: -13,
                  child: Transform.rotate(
                    angle: pi / 5,
                    child: Image.asset('assets/flower.png', width: 190),
                  ),
                ),

                // lion
                Positioned(
                  top: 40,
                  left: size.width / 2 - 165,
                  child: Image.asset('assets/lion.png', width: 280),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 325),
                  child: Form(
                    key: _formKey,
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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          textAlign: TextAlign.center,
                          maxLines: 4,
                          style: TextStyle(
                            color: Color(0xFF7A1FA0),
                            fontSize: 14,
                            height: 1.4,
                          ),
                        ),

                        const SizedBox(height: 20),

                        DefaultFormField(
                          controller: emailController,
                          label: "Email ID",
                          hintText: "Enter your email",
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }
                            final emailRegex = RegExp(
                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                            if (!emailRegex.hasMatch(value)) {
                              return 'Email must be example@example.com';
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 21),

                        DefaultFormField(
                          controller: passwordController,
                          label: "Password",
                          hintText: "Enter your password",
                          isPassword: isPasswordHidden,
                          suffixIcon: IconButton(
                            icon: Icon(
                              isPasswordHidden
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility,
                              color: primaryPurple,
                            ),
                            onPressed: () {
                              setState(() {
                                isPasswordHidden = !isPasswordHidden;
                              });
                            },
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 17),

                        AppButton(
                          text: 'Log In',
                          backgroundColor: primaryPurple,
                          textColor: Colors.white,
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HomeScreen()),
                              );
                            }
                          },
                        ),

                        const SizedBox(height: 36),

                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                "Or Login with",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),

                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            FaIcon(FontAwesomeIcons.google,
                                size: 48, color: primaryPurple),
                            SizedBox(width: 50),
                            Icon(Icons.apple,
                                size: 64, color: primaryPurple),
                          ],
                        ),

                        const SizedBox(height: 40),
                      ],
                    ),
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