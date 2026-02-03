import 'package:flutter/material.dart';
import 'package:quiz_card/screens/select_screen.dart';
import 'package:quiz_card/widgets/app_appbar.dart';
import 'package:quiz_card/widgets/app_bottombar.dart';
import 'package:quiz_card/widgets/category_button.dart';
import 'package:quiz_card/widgets/explore_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class ExploreCardData {
  final String imagePath;
  final String title;
  final bool isLocked;
  final VoidCallback onTap;

  ExploreCardData({
    required this.imagePath,
    required this.title,
    this.isLocked = false,
    required this.onTap,
  });
}

class _ExploreScreenState extends State<ExploreScreen> {
  int currentIndex = 0;
  int selectedCategoryIndex = 0;

  final List<String> categories = [
    'History',
    'Geography',
    'Science',
    'Economics',
  ];

  late Map<String, List<ExploreCardData>> categoryCards;

  @override
  void initState() {
    super.initState();

    categoryCards = {
      'History': [
        ExploreCardData(
          imagePath: 'assets/history_themes/history_1.jpg',
          title: 'Medieval History',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/history_themes/history_2.png',
          title: 'Heritage Tourism',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/history_themes/history_3.png',
          title: 'Constitution',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/history_themes/history_4.png',
          title: 'Freedom Struggle',
          isLocked: true,
          onTap: () {},
        ),
      ],
      'Geography': [
        ExploreCardData(
          imagePath: 'assets/geography_themes/geography_1.png',
          title: 'States and Cities',
          onTap: () {Navigator.push(
            context, MaterialPageRoute(builder: (_) => SelectScreen()));},
        ),
        ExploreCardData(
          imagePath: 'assets/geography_themes/geography_2.png',
          title: 'Rivers',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/geography_themes/geography_3.png',
          title: 'Agriculture',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/geography_themes/geography_4.png',
          title: 'Mountains',
          isLocked: true,
          onTap: () {},
        ),
      ],
      'Science': [
        ExploreCardData(
          imagePath: 'assets/science_themes/science_1.png',
          title: 'Fast and Furious',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/science_themes/science_2.png',
          title: 'Testing Formula One',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/science_themes/science_3.png',
          title: 'EV Power',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/science_themes/science_4.png',
          title: 'Future Driving',
          isLocked: true,
          onTap: () {},
        ),
      ],
      'Economics': [
        ExploreCardData(
          imagePath: 'assets/history_themes/history_1.jpg',
          title: 'Supply and Demand',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/history_themes/history_2.png',
          title: 'Market Structures',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/history_themes/history_3.png',
          title: 'Finance & Trade',
          onTap: () {},
        ),
        ExploreCardData(
          imagePath: 'assets/history_themes/history_4.png',
          title: 'Economic Policies',
          isLocked: true,
          onTap: () {},
        ),
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    final currentCategory = categories[selectedCategoryIndex];
    final currentCards = categoryCards[currentCategory]!;

    return Scaffold(
      backgroundColor: const Color(0xFFF3D9FF),
      appBar: DefaultAppBar(
        title: 'Explore Themes',
        avatarImage: const AssetImage('assets/users_avatars/user_girl1.png'),
        onBack: () {Navigator.pop(context);},
        onMenu: () {},
      ),
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
                      setState(() => selectedCategoryIndex = index);
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            /// Cards
            Expanded(
              child: ListView.separated(
                itemCount: currentCards.length,
                separatorBuilder: (_, __) => const SizedBox(height: 21),
                itemBuilder: (context, index) {
                  final card = currentCards[index];
                  return ExploreCard(
                    imagePath: card.imagePath,
                    title: card.title,
                    isLocked: card.isLocked,
                    onTap: card.onTap,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() => currentIndex = index);
        },
      ),
    );
  }
}