import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  Widget _buildNavItem({
    required int index,
    required String asset,
  }) {
    final bool isSelected = currentIndex == index;

    return Expanded(
      child: IconButton(
        onPressed: () => onTap(index),
        icon: Image.asset(
          asset,
          height: 26,
          width: 26, // IMPORTANT
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xFF7B1FA2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          _buildNavItem(index: 0, asset: 'assets/bottomNavBar_icons/home.png'),
          _buildNavItem(index: 1, asset: 'assets/bottomNavBar_icons/achievements.png'),
          _buildNavItem(index: 2, asset: 'assets/bottomNavBar_icons/book.png'),
          _buildNavItem(index: 3, asset: 'assets/bottomNavBar_icons/settings.png'),
        ],
      ),
    );
  }
}