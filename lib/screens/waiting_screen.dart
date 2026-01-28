import 'package:flutter/material.dart';
import 'package:quiz_card/widgets/custom_app_bar%20(2).dart';
import 'package:quiz_card/widgets/user_widget.dart';
import 'package:quiz_card/widgets/user_widget.dart';
import 'package:quiz_card/widgets/build_bottom.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3d9FA),
      appBar: CustomAppBar(title: 'Waiting Room'),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(width: 2, height: 400, color: Colors.purple),
                  Container(width: 200, height: 2, color: Colors.purple),
                  Transform.rotate(
                    angle: 45 * 3.14159 / 180,
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.purple[800],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: UserWidget(
                      name: 'user 1',
                      score: '  ',
                      radius: 35,
                      nameSize: 17,
                      scoreSize: 12,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: UserWidget(
                      name: 'user 2',
                      score: '  ',
                      radius: 35,
                      nameSize: 17,
                      scoreSize: 12,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: UserWidget(
                      name: 'user 3',
                      score: '  ',
                      radius: 35,
                      nameSize: 17,
                      scoreSize: 12,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: UserWidget(
                      name: 'user 3',
                      score: '  ',
                      radius: 35,
                      nameSize: 17,
                      scoreSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBottomButton(Icons.file_upload_outlined),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3E5F5),
                      border: Border.all(color: Colors.purple, width: 1.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Code : 13346',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  buildBottomButton(Icons.reply),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
