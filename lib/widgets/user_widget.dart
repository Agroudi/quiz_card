import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String text;
  final String? score;
  final double radius;
  final double nameSize;
  final double scoreSize;
  AssetImage userImage;

  UserWidget({
    super.key,
    required this.userImage,
    required this.text,
    this.score,
    required this.radius,
    required this.nameSize,
    required this.scoreSize,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: radius + 4,
          backgroundColor: Colors.purple[800],
          child: CircleAvatar(
            foregroundImage: userImage,
            radius: radius,
            backgroundColor: Colors.transparent
          ),
        ),

        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: nameSize,
            color: Color(0xFF7A1FA0),
          ),
        ),
        Text(
          score ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scoreSize,
            color: Color(0xFFB35ACA),
          ),
        ),
      ],
    );
  }
}
