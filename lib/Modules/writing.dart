import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class Writing extends StatelessWidget {
  const Writing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Writing'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Enhance your writing with tools for creation, editing, and style refinement'),
          ],
        ),
        MyListTile(
          title: 'Canva',
          description:
              'Effortlessly design anything: presentaions, logos, social \nmedia posts and more.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By canva.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'image generator',
          description:
              'A GPT specialized in generating and refining images with\na mix of professional and friendly tone.image generator',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By NAIF J ALOTAIBI',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Logo Creator',
          description:
              'Use me to generate professional logo designs and app icons!\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By Chase Lean',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Diagrams: Show Me',
          description:
              'Create Diagrams, Architecture Visualizations, Flow Chart, \nMind Map, Schemes and more. Great for coding,presentati...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By helpful.dev',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Consensus',
          description:
              'Your AI Research Assistant. Search 200M academic papers\nfrom Consensus, get science-based answers, and draft cont',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By consensus.app',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Cartoonize Yourself',
          description:
              'Turns photos into Pixar-style illustrations. Upload your photo\nto try',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By karenxcheng.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Video GPT by VEED',
          description:
              'AI Video Maker. Generate videos for social media-YouTube,\nInstagram, TikTok and more! Free text to video & speech tool',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By veed.io',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Write For Me',
          description:
              'Write tailored, engaging content with a focus on quality,\nrelevance and precise word count.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By puzzle.today',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'KAYAK - Flights, Hotels & Cars',
          description: 'Your travel planning assistant for flights & cars\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By kayak.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Humanizer Pro',
          description:
              '#1 Humanizer in the market. Writes text like a human,\navoiding AI detection. This tool humanizes your content to bypass',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By charlygpts.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Grimoire',
          description:
              'Coding Wizard🧙‍♂️ Learn to Prompt-gram!Create a website(or\nanything) with a sentence. 20+ Hotkeys for coding flows. Lear',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By mindgoblinstudios.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Income Stream Surfer\'s SEO Content Writer',
          description: 'Writes SEO Content using ChatGPT For ANY website\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By mindgoblinstudios.com',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
