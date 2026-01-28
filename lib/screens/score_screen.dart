import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_card/widgets/custom_app_bar%20(2).dart';
import 'package:quiz_card/widgets/user_widget.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3d9FA),
      appBar: CustomAppBar(title: 'Odisha'),
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                UserWidget(
                  name: 'You won!!',
                  score: '8/8',
                  radius: 75,
                  nameSize: 35,
                  scoreSize: 20,
                ),
                Positioned(
                  top: -30,
                  left: -15,
                  child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(-40 / 360),
                    child: FaIcon(
                      FontAwesomeIcons.crown,
                      size: 60,
                      color: Colors.yellow[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 120),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserWidget(
                name: 'User 1',
                score: '7/8',
                radius: 35,
                nameSize: 17,
                scoreSize: 12,
              ),
              UserWidget(
                name: 'User 1',
                score: '7/8',
                radius: 35,
                nameSize: 17,
                scoreSize: 12,
              ),
              UserWidget(
                name: 'User 1',
                score: '7/8',
                radius: 35,
                nameSize: 17,
                scoreSize: 12,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[200],
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                'HOME',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
