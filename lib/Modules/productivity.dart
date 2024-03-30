import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class Productivity extends StatelessWidget {
  const Productivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Productivity'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Increase your efficiency'),
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
          title: 'Diagrams: Show Me',
          description:
              'Create Diagrams, Architecture Visualizations, Flow Chart, \nMind Map, Schemes and more. Great for coding,presentati...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By helpful.dev',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Video GPT by VEED',
          description:
              'AI Video Maker. Generate videos for social media - YouTube, \nInstagram, TikTok and more! Free text to video & speech tool...',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By veed.io',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Ai PDF',
          description:
              'Securely store and chat with ALL your PDFs for FREE,even\nx-large PDFs! Ai PDF powers more than 400,000 chats with pro',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By mindgoblinstudios.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Video Maker by invideo AI',
          description:
              'Generate stunning narrated videos effortlessly with this \nvideoGPT!',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By consensus.app',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Slide MAker',
          description:
              'Prompt to create beautiful PowerPoint presentation slides. Can \nread any link for content.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By aidocmaker.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'WebPilot',
          description: 'Search, Browse, Write & Agent. Action & API Offering\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By webpilot.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: '22.500+ Best Custom GPTs',
          description:
              'Search all public GPTs in one place. Find the best Custom \nChatGPTs tailored to your needs. Every day, hundreds of new p...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By puzzle.today',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Prompt Perfect',
          description:
              'Automatically rewrite your prompts for precision, accuracy, and \nclarity',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By promptperfect.xyz',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Doc Maker',
          description:
              'Prompt to create documents, such as resumes, reports, and \nmore. Export to PDF, DOCX, PPTX, XLSX, CSV.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By aidocmaker.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Resume',
          description:
              'By combining the expertise of top resume writers with \nadvanced AI, we assist in diagnosing and enhancing your resu...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By jobright.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Resume',
          description:
              'Creates customized resume PDFs, and analyzes resumes \n(trained on 2M+ resumes)',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By sironix.app',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
