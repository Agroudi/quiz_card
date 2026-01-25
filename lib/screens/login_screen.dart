import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color primaryPurple = Color(0xFF6A1B9A);

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF2D1FE),
              Color(0xFFECC7FF),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),

                Container(
                  width: 220,
                  height: 220,
                  child: Image.asset(
                    "assets/6032704106574580748_121.jpg",
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  "Mystic Deck",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: primaryPurple,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                      "sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: primaryPurple,
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 28),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email ID",
                      style: TextStyle(
                        fontSize: 17,
                        color: primaryPurple,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter your email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(11)),
                          borderSide:
                          BorderSide(color: primaryPurple, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(11)),
                          borderSide:
                          BorderSide(color: primaryPurple, width: 1.8),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 17,
                        color: primaryPurple,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(11)),
                          borderSide:
                          BorderSide(color: primaryPurple, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(11)),
                          borderSide:
                          BorderSide(color: primaryPurple, width: 1.8),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: primaryPurple,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

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

                const SizedBox(height: 28),

                Row(
                  children: const [
                    Expanded(child: Divider(thickness: 1)),
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
                    Expanded(child: Divider(thickness: 1)),
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
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}