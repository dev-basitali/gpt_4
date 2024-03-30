import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Education'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Explore new ideas, revisit existing skills'),
          ],
        ),
        MyListTile(
          title: 'CK-12 Flexi',
          description:
              'The world’s most powerful math and science AI Tutor for middle \nand high school students.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By flexi.org',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Universal Primer',
          description: 'The fastest way to learn everything about anything\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By runway.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Math Solver',
          description:
              'Your advanced math solver and AI Tutor, offers step-by-step \nanswers, and helps you learn math and even all academic subj...',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By studyx.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Code Tutor',
          description:
              'Let\'s code together! I\'m Khanmigo Lite, by Khan Academy. I \nwon\'t write the code for you, but I\'ll help you work things out. C...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By khanacademy.org',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AlphaNotes GPT',
          description:
              'Transform YouTube videos or web articles into your personal \nstudy guide or study aids, making learning efficient and enjoyable.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By davideai.dev',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AI Tutor',
          description:
              'An AI tutor skilled in guiding students through their academic \nqueries 📚🧑🏻‍🏫',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By techwithanirudh.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Voxscript',
          description:
              'Quick YouTube, US equity data, and web page summarization \nwith vector transcript search -- no logins needed.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By allwiretech.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AutoExpert (Chat)',
          description:
              'Tired of lightweight answers? I am the ideal GPT for the curious \nhuman that always wants to learn more. I\'ll impanel a dynamic',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By llmimagineers.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'math',
          description: 'The world\'s most powerful math tool\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By aihomework.fun',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Effortless Book Summary',
          description:
              'Perfect for quickly acquiring book insigths and getting an \noverview of what they\'re about',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Alberto Marcos',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Mr. Ranedeer',
          description:
              'Meet Mr. Ranedeer, your personalized AI tutor! Version: 2.7 \nReboot',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By mr-ranedeer.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Math AI 🧮',
          description:
              'Explore Math AI: Your advanced AI-powered guide for solving \ncomplex math problems. Ideal for students and educators, it o...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By gptsfinder.co',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
