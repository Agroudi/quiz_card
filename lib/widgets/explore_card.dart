import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isLocked;
  final VoidCallback onTap;

  const ExploreCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            /// Dark overlay
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.black.withOpacity(0.35),
              ),
            ),

            /// Play / Lock icon
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  isLocked ? Icons.lock : Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),

            /// Title
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}