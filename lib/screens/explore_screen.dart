import 'package:flutter/material.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/app_bottombar.dart';
import 'package:quiz_card/widgets/category_button.dart';
import 'package:quiz_card/widgets/explore_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  int currentIndex = 0;

  final List<String> categories = [
    'History',
    'Geography',
    'Science',
    'Economics',
  ];

  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D9FF),
      appBar: DefaultAppBar(title: 'Explore Themes', onBack: (){} , onMenu: () => ()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            /// Categories
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return CategoryButton(
                    text: categories[index],
                    isSelected: selectedCategoryIndex == index,
                    onTap: () {
                      setState(() {
                        selectedCategoryIndex = index;
                      });
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            /// Cards
            Expanded(
              child: ListView(
                children: [
                  ExploreCard(
                    imagePath: 'assets/history_themes/medieval.jpg',
                    title: 'Medieval History',
                    onTap: () {},
                  ),
                  SizedBox(height: 21),
                  ExploreCard(
                    imagePath: 'assets/history_themes/heritage.png',
                    title: 'Heritage Tourism',
                    onTap: () {},
                  ),
                  SizedBox(height: 21),
                  ExploreCard(
                    imagePath: 'assets/history_themes/constitution.png',
                    title: 'Constitution',
                    onTap: () {},
                  ),
                  SizedBox(height: 21),
                  ExploreCard(
                    imagePath: 'assets/history_themes/freedom.png',
                    title: 'Freedom Struggle',
                    isLocked: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}