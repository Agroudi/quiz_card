import 'package:flutter/material.dart';
import 'package:quiz_card/screens/score_screen.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/app_button.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> states = [
      'Maharashtra',
      'Odisha',
      'Assam',
      'Tamil Nadu',
      'Andhra Pradesh',
      'Karnataka',
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF3D9FA),

      appBar: DefaultAppBar(
        title: 'Explore Themes',
        avatarImage: const AssetImage(
          'assets/users_avatars/user_girl1.png',
        ),
        onBack: () {},
        onMenu: () {},
      ),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD6B6F2),
                      ),
                    ),

                    Image.asset('assets/geography_themes/geography_1.png', height: 180, width: double.infinity, fit: BoxFit.cover),

                    Container(
                      height: 180,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.18),
                      ),
                      child: const Text(
                        'States and Cities',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: states.length,
                separatorBuilder: (_, __) => const SizedBox(height: 15),
                itemBuilder: (context, index) {
                  return AppButton(
                    text: states[index],
                    onTap: () {},
                    backgroundColor: const Color(0xFF7B1FA2),
                    textColor: Colors.white,
                  );
                },
              ),
            ),

            const SizedBox(height: 120),
          ],
        ),
      ),

      bottomSheet: Container(
        padding: const EdgeInsets.fromLTRB(140, 16, 140, 40),
        decoration: BoxDecoration(
          color: const Color(0xFFF3d9FA),
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 20,
              offset: const Offset(0, -6),
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple[200],
            minimumSize: const Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
          ),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => ScoreScreen()));},
          child: const Text(
            'PLAY',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Inter-Regular',
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}