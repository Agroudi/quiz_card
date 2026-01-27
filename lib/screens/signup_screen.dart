import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_card/widgets/app_button.dart';
import 'package:quiz_card/widgets/app_formfield.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final ageController = TextEditingController();
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
                Positioned(
                  top: 85,
                  left: -17,
                  child: Transform.rotate(
                    angle: -pi / 5,
                    child: Image.asset('assets/flower.png', width: 190),
                  ),
                ),
                Positioned(
                  top: 85,
                  right: -13,
                  child: Transform.rotate(
                    angle: pi / 5,
                    child: Image.asset('assets/flower.png', width: 190),
                  ),
                ),
                Positioned(
                  top: -20,
                  left: size.width / 2 - 165,
                  child: Image.asset('assets/lion.png', width: 280),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 260),
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

                        DefaultFormField(
                          controller: nameController,
                          label: "Name",
                          hintText: "Enter your name",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Name is required';
                            }
                            if (!RegExp(r'^[a-zA-Z\s]+$')
                                .hasMatch(value)) {
                              return 'Name must contain letters only';
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 10),

                        DefaultFormField(
                          controller: ageController,
                          label: "Age",
                          hintText: "Enter your age",
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Age is required';
                            }
                            if (!RegExp(r'^\d{2}$').hasMatch(value)) {
                              return 'Age must be 2 digits';
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 10),

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

                        const SizedBox(height: 10),

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

                        const SizedBox(height: 20),

                        AppButton(
                          text: 'Sign Up',
                          backgroundColor: primaryPurple,
                          textColor: Colors.white,
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LoginScreen()),
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
                                "Or Sign Up with",
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