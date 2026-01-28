import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String name;
  final String score;
  final double radius;
  final double nameSize;
  final double scoreSize;

  const UserWidget({
    super.key,
    required this.name,
    required this.score,
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
            radius: radius,
            backgroundImage: AssetImage('assets/user.jpg'),
          ),
        ),

        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: nameSize,
            color: Colors.deepPurple,
          ),
        ),
        Text(
          score,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: scoreSize,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
