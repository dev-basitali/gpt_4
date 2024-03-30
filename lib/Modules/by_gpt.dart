import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class ByChatGPT extends StatelessWidget {
  const ByChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'By ChatGPT'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'GPTs created by the ChatGPT team'),
          ],
        ),
        MyListTile(
          title: 'DALL·E',
          description:
              'Let me turn your imagination into imagery.\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Data Analyst',
          description:
              'Drop in any files and I can help analyze and visualize your data.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Hot Mods',
          description:
              'Let\'s modify your image into something really wild. Upload an \nimage and let\'s go!',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Creative Writing Coach',
          description:
              'I\'m eager to read your work and give you feedback to improve \nyour skills.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Coloring Book Hero',
          description:
              'Take any idea and turn it into whimsical coloring book pages.\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Planty',
          description:
              'I\'m Planty, your fun and friendly plant care assistant! Ask me \nhow to best take care of your plants.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'ChatGPT Classic',
          description:
              'The latest version of GPT-4 with no additional capabilities.\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Web Browser',
          description:
              'I can browse the web to help you gather information or conduct\nresearch',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Game Time',
          description: 'I can quickly explain board games or card games to \nplayers of any age. Let the games begin!',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'The Negotiator',
          description:
              'I\'ll help you advocate for yourself and get better outcomes. \nBecome a great negotiator.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Cosmic Dream',
          description:
              'Visionary painter of digital wonder.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Tech Support Advisor',
          description:
              'From setting up a printer to troubleshooting a device, I’m here to \nhelp you step-by-step.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Laundry Buddy',
          description:
              'Ask me anything about stains, settings, sorting and everything \nlaundry.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Sous Chef',
          description:
              'I’ll give you recipes based on the foods you love and ingredients \nyou have.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Math Mentor',
          description:
              'I help parents help their kids with math. Need a 9pm refresher on \ngeometry proofs? I’m here for you.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Mocktail Mixologist',
          description:
              'I’ll make any party a blast with mocktail recipes with whatever \ningredients you have on hand.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'genz 4 meme',
          description:
              'i help u understand the lingo & the latest memes.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By ChatGPT',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
