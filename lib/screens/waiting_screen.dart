import 'package:flutter/material.dart';
import 'package:quiz_card/screens/explore_screen.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/user_widget.dart';

class WaitingScreen extends StatefulWidget {
  final String roomCode;

  const WaitingScreen({
    super.key,
    required this.roomCode,
  });

  @override
  State<WaitingScreen> createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D9FA),
      appBar: DefaultAppBar(
        title: 'Waiting Room',
        avatarImage: const AssetImage('assets/users_avatars/user_girl1.png'),
        onBack: () => Navigator.pop(context),
        onMenu: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  /// Vertical Line
                  Container(width: 2, height: 360, color: Colors.purple),

                  Positioned(top: 190, child: _dot()),
                  Positioned(bottom: 190, child: _dot()),

                  /// Horizontal Line
                  Container(width: 220, height: 2, color: Colors.purple),

                  Positioned(left: 0, child: _dot()),
                  Positioned(right: 0, child: _dot()),

                  /// Center Diamond
                  Transform.rotate(
                    angle: 45 * 3.14159 / 180,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.purple[800],
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),

                  /// TOP
                  Positioned(
                    top: 40,
                    child: UserWidget(
                      userImage: const AssetImage(
                          'assets/users_avatars/user_girl1.png'),
                      text: 'User 4',
                      radius: 40,
                      nameSize: 15,
                      scoreSize: 13,
                    ),
                  ),

                  /// BOTTOM
                  Positioned(
                    bottom: -10,
                    child: UserWidget(
                      userImage: const AssetImage(
                          'assets/users_avatars/user_girl2.png'),
                      text: 'User 3',
                      radius: 40,
                      nameSize: 15,
                      scoreSize: 13,
                    ),
                  ),

                  /// Left User
                  Positioned(
                    left: -90,
                    child: Row(
                      children: [
                        UserWidget(
                        userImage: const AssetImage( 'assets/users_avatars/user_girl3.png'),
                        text: 'User 1',
                        radius: 40,
                        nameSize: 15,
                        scoreSize: 13,
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    right: -90,
                    child: Row(
                      children: [
                        UserWidget(
                          userImage: const AssetImage( 'assets/users_avatars/user_girl4.png'),
                          text: 'User 2',
                          radius: 40,
                          nameSize: 15,
                          scoreSize: 13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Bottom Controls
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _imageButton('assets/share.png'),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36, vertical: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: const Color(0xFF7A1FA0)),
                    ),
                    child: Text(
                      'Code : ${widget.roomCode}',
                      style: const TextStyle(
                        color: Color(0xFF7A1FA0),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ExploreScreen()),
                      );
                    },
                    child: _imageButton('assets/next.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dot() {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Color(0xFF7A1FA0),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _imageButton(String asset) {
    return GestureDetector(
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF7A1FA0),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Image.asset(asset),
      ),
    );
  }
}