import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class DALL_E extends StatelessWidget {
  const DALL_E({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'DALL·E'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Transform your ideas into amazing images'),
          ],
        ),
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
          title: 'Cartoonize Yourself',
          description:
              'Turns photos into Pixar-style illustrations. Upload your photo\nto try',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By karenxcheng.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Consistent Character GPT👉🏼 Fast & High Quality⚡️',
          description:
              'Your creative partner for generating characters in different \nposes, expressions, styles, and scenes. No prompt needed, jus...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By helpful.dev',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Super Describe',
          description:
              'Upload any image to get a similar one using DALL·E 3 along \nwith the detailed prompt!',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By bestaiprompts.art',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Photo Multiverse',
          description:
              'Upload your photo and I’ll change the background location, \nperson\'s appearance, expressions, or convert to a cartoon. Try ...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By sablevista.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Image Edit, Recreate & Merge',
          description:
              'Replicate Image, Images Merge, Image Edit, Style Transfer. Use \n"Help" for more info. 20+ features of the source image will be t...',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By neural.love',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'LOGO',
          description:
              'Senior brand LOGO design expert, 20 years of brand LOGO \n8design experience, designer material feeding training',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By logogpts.cn',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Glibatree Art Designer',
          description:
              'Art Generation Made Easy! This GPT will fill in details about your \nidea and make four images, each better than you imagined.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By glibatree.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'MJ Prompt Generator (V6)',
          description:
              'Generate five detailed, creative, optimized prompts that are \nready to use in Midjourney V6.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By featuredgpts.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'LogoGPT',
          description: 'Designs personalized logos from sketches.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By A SAI RAHUL',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Video Maker',
          description: 'Friendly video creator with animation effects\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By changeblogger.org',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
