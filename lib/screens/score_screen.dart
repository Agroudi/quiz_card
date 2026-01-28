import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/user_widget.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3d9FA),
      appBar: DefaultAppBar(
        title: 'Odisha',
        subtitle: 'States and Cities',
        avatarImage: const AssetImage('assets/users_avatars/user_girl1.png'),
        onBack: () {},
        onMenu: () {},
      ),
      body: Column(
        children: [
          SizedBox(height: 200),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                top: -63,
                left: -15,
                width: 100,
                height: 100,
                child: RotationTransition(
                    turns: const AlwaysStoppedAnimation(-40 / 800),
                    child: Image.asset('assets/crown.png')
                ),
              ),
                UserWidget(
                  text: 'You won!!',
                  score: '8/8',
                  radius: 105,
                  nameSize: 35,
                  scoreSize: 20,
                  userImage: AssetImage('assets/users_avatars/user_girl1.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserWidget(
                userImage: AssetImage('assets/users_avatars/user_girl2.png'),
                text: 'User 2',
                score: '7/8',
                radius: 42,
                nameSize: 17,
                scoreSize: 14,
              ),
              UserWidget(
                userImage: AssetImage('assets/users_avatars/user_girl3.png'),
                text: 'User 3',
                score: '7/8',
                radius: 42,
                nameSize: 17,
                scoreSize: 14,
              ),
              UserWidget(
                userImage: AssetImage('assets/users_avatars/user_girl4.png'),
                text: 'User 4',
                score: '7/8',
                radius: 42,
                nameSize: 17,
                scoreSize: 14,
              ),
            ],
          ),
        ],
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
            elevation: 0, // important: shadow comes from container
          ),
          onPressed: () {},
          child: const Text(
            'HOME',
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