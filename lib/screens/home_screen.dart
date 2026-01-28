import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quiz_card/screens/join_screen.dart';
import 'package:quiz_card/widgets/app_button.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/app_bottombar.dart';
import 'package:quiz_card/widgets/home_imagebutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D5FB),
      appBar: DefaultAppBar(
        title: 'Explore Themes',
        avatarImage: const AssetImage('assets/users_avatars/user_girl1.png'),
        onBack: () {},
        onMenu: () {},
      ),
      body: Stack(
        children: [

          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFF3E5F5),
          ),

          // Left kite
          Positioned(
            height: 120,
            width: 120,
            left: 15,
            top: 150,
            child: Transform.rotate(
              angle: -pi / -10,
              child: Opacity(opacity: 0.5, child: Image.asset('assets/kite.png')),
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
              child: Opacity(opacity: 0.5, child: Image.asset('assets/kite.png')),
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
              child: Opacity(opacity: 0.5, child: Image.asset('assets/kite.png')),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Welcome User!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6A1B9A),
                    ),
                  ),
                  const SizedBox(height: 57),
                  AppButton(
                    text: 'Join Room',
                    backgroundColor: const Color(0xFF7B1FA2),
                    textColor: Colors.white,
                    onTap: () {Navigator.push(
                        context, MaterialPageRoute(builder: (_) => JoinScreen()));},
                  ),
                  const SizedBox(height: 15),
                  AppButton(
                    text: 'Create Room',
                    backgroundColor: const Color(0xFF7B1FA2),
                    textColor: Colors.white,
                    onTap: () {},
                  ),
                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      homeImageButton(
                        image: 'assets/home_iconButtons/points.png',
                        label: 'Points',
                        onTap: () {},
                      ),
                      homeImageButton(
                        image: 'assets/home_iconButtons/duration.png',
                        label: 'Duration',
                        onTap: () {},
                      ),
                      homeImageButton(
                        image: 'assets/home_iconButtons/stats.png',
                        label: 'Stats',
                        onTap: () {},
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blue.withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        _buildUserRow('Ahmed', '700', true),
                        _buildUserRow('Abdelrahman', '500', false),
                        _buildUserRow('Mario', '500', true),
                        _buildUserRow('Wael', '400', false),
                        _buildUserRow('Nader', '300', true),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          // TODO: navigate later
          // Example:
          // if (index == 1) Navigator.push(...)
        },
      ),
    );
  }

  Widget _buildStatCard(IconData icon, String label) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF7B1FA2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 28),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildUserRow(String name, String score, bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      color: isDark ? const Color(0xFFE1BEE7) : const Color(0xFFF3E5F5),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFF7B1FA2),
            child: Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 20),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A1B9A),
            ),
          ),
          const Spacer(),
          Text(
            score,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6A1B9A),
            ),
          ),
        ],
      ),
    );
  }
}