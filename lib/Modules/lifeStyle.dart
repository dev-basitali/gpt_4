import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class LifeStyle extends StatelessWidget {
  const LifeStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Lifestyle'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Get tips on travel, workouts, style, food, and more'),
          ],
        ),
        MyListTile(
          title: 'KAYAK - Flights, Hotels & Cars',
          description:
              'Your travel planning assistant for flights, hotels, & cars.\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By canva.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Tattoo GPT',
          description:
              'Tattoo GPT designs your tattoo. It assists you in refining your \ntattoo ideas, suggests designs, generates visual previews of th...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Michael Moncada',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Astrology Birth Chart GPT',
          description:
              'Expert astrologer GPT that needs your birth info to answer\nqueries.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By authorityastrology.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'DeepGame',
          description:
              'Play any story as a character. You decide what to do next. AI\ngenerates a new image for each step to enhance immersion.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Utile Labs',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Mia AI',
          description:
              'Your voice AI companion. The only GPT optimized for natural\nand meaningful voice conversations.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By heymia.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Books',
          description: 'Your AI guide in the world of literature and reading.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Josh Brent N. Villocido',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'What should I watch?',
          description:
              'Find movies and tv shows to watch based on your taste and\npreferences, goodbye decision paralysis!',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By Ammaar Reshi',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Rizz GPT',
          description: 'Your friendly dating buddy, making dating easier.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By 6hive.ee',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'GymStreak Workout Creator',
          description:
              'Automatically create home and & gym workouts (Also available\nas app on the AppStore)',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By gymstreak.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Healthy Chef',
          description: 'Recipe creator with visual and nutritional insights.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By daniel garcia acosta',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AllTrails',
          description:
              'Find trails that fit your nature for your next hike, ride, or run.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By alltrails.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Home Style Advisor',
          description:
              'Analyzes home photos, suggests decor matching style, and\nuses DALL-E for visual ideas.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Eric Rafael Ramos Suárez',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
