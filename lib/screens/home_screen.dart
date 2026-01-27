import 'package:flutter/material.dart';
import 'package:quiz_card/widgets/app_button.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/custom_bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D5FB),
      appBar: DefaultAppBar(title: 'Mystic Deck', onBack: () => (), onMenu: () => ()),
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.3,
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
                    onTap: () {},
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
                      _buildStatCard(Icons.flag, 'Points'),
                      _buildStatCard(Icons.hourglass_empty, 'Duration'),
                      _buildStatCard(Icons.groups, 'Stats'),
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
      bottomNavigationBar: const CustomBottomNav(),
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
