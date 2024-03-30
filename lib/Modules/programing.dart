import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class Programing extends StatelessWidget {
  const Programing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Programming'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Write code, debug, test, and learn'),
          ],
        ),
        MyListTile(
          title: 'Grimoire',
          description:
              'Coding Wizard🧙‍♂️ Learn to Prompt-gram! Create a website (or \nanything) with a sentence. 20+ Hotkeys for coding flows. Lear...',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By mindgoblinstudios.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: '💻Professional Coder (Auto programming)',
          description:
              'A gpt expert at solving programming problems. We have \nopen-sourced the prompt here: https://github.com/ai-boost/a...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By awesomegpts.vip',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'DesignerGPT',
          description: 'Creates and hosts beautiful websites\n',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By Pietro Schirano',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AutoExpert (Dev)',
          description:
              'AutoExpert v6 (GPT Developer Edition) is your steadfast pair \nprogrammer, armed with enhanced code generation ability, onl...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By helpful.dev',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Screenshot To Code GPT',
          description:
              'Upload a screenshot of a website and convert it to clean HTML/\nTailwind/JS code.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By godofprompt.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'CrewAI Assistant',
          description: 'CrewAI Python expert.\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By JOAO M DURAES MOURA',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Code Copilot',
          description:
              'Code Smarter, Build Faster—With the Expertise of a 10x \nProgrammer by Your Side.',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By promptspellsmith.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AskTheCode',
          description:
              'Provide a GitHub repository URL and ask about any aspect of \nthe code.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By askthecode.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Python',
          description:
              'A highly sophisticated GPT tailored for advanced Python \nprogrammers focusing on efficient and high-quality production...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Nicholas Barker',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Code Guru',
          description:
              'Reviews code, writes pull requests, generates and optimizes \nfunctions, writes tests, and comments existing code.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Ryan J Topps',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'API Docs',
          description: 'OpenAI API, GPTs, Documentation and CookBook\n',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By webpilot.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Java Assistant',
          description:
              'A Java code assistant and debugger that can browse the \ninternet.',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By guliucang.com',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
