import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class Featured extends StatelessWidget {
  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Featured'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Curated top picks from this week'),
          ],
        ),
        Card(
          color: const Color(0xffe6deeb),
          child: MyListTile(
            title: 'KAYAK - Flights, Hotels & Cars',
            description: 'Your travel planning assistant for flights & cars\n',
            imagePath: 'assets/icons/kayak-icon.png',
            link: 'By kayak.com',
            onPress: () {},
          ),
        ),
        const Gap(5),
        Card(
          color: const Color(0xffe6deeb),
          child: MyListTile(
            title: 'Diagrams: Show Me',
            description:
                'Create Diagrams, Architecture Visualizations, Flow Chart, \nMind Map, Schemes and more. Great for coding,presentati...',
            imagePath: 'assets/icons/kayak-icon.png',
            link: 'By helpful.com',
            onPress: () {},
          ),
        ),
        const Gap(5),
        Card(
          color: const Color(0xffe6deeb),
          child: MyListTile(
            title: 'Canva',
            description:
                'Effortlessly design anything: presentaions, logos, social \nmedia posts and more.',
            imagePath: 'assets/icons/canva-icon.png',
            link: 'By canva.com\n',
            onPress: () {},
          ),
        ),
        const Gap(5),
        Card(
          color: const Color(0xffe6deeb),
          child: MyListTile(
            title: 'Tutor Me',
            description:
                'Your personal AI tutor by Khan Academy! I\'m Khanmigo Lite-\nhere to help you with math, science and humanities ...',
            imagePath: 'assets/icons/kayak-icon.png',
            link: 'By helpful.com',
            onPress: () {},
          ),
        ),
        const Gap(5),
      ],
    );
  }
}
