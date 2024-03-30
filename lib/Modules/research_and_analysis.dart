import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Components/list_tile.dart';

class ResearchAndAnalysis extends StatelessWidget {
  const ResearchAndAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 30, color: Color(0xff000000)),
                'Research & Analysis'),
          ],
        ),
        const Row(
          children: [
            Text(
                style: TextStyle(fontSize: 15, color: Color(0xff706463)),
                'Find, evaluate, interpret, and visualize information'),
          ],
        ),
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
          title: 'AskYourPDF Research Assistant',
          description:
              'Automate your research with AI, Chat multiple files (Unlimited \nPDFs), Generate articles/essays with valid citations, ChatPDF...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By NAIF J ALOTAIBI',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'ScholarAI',
          description:
              'AI Scientist - generate new hypotheses, analyze text, figures, \nand tables from 200M+ research papers and books',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By scholarai.io',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Scholar GPT',
          description:
              'Enhance research with 200M+ resources and built-in critical \nreading skills. Access Google Scholar, PubMed, JSTOR, Arxiv...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By awesomegpts.ai',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Finance Wizard',
          description:
              'I predict future stock market prices. If you get an error, say "try \nagain" or download historical data manually and upload here f...',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By titantrades.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'SEO',
          description:
              'Enter any URL and keyword and get an On-Page SEO analysis & \ninsights!',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By orrenprunckun.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'SciSpace',
          description:
              'Do hours worth of research in minutes. Instantly access 200M+ \npapers, analyze papers at lightning speed, and effortlessly draf...',
          imagePath: 'assets/icons/canva-icon.png',
          link: 'By scispace.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Wolfram',
          description:
              'Access computation, math, curated knowledge & real-time data \nfrom Wolfram|Alpha and Wolfram Language; from the makers...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By wolfram.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'LegalGPT',
          description:
              'Specialized in legal matters, this GPT could assist lawyers and \nlegal professionals with case research, legal documentation, a...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By RAHUL PORWAL',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Keymate.AI GPT',
          description:
              'All in one Research: 10X Browsing Links with Google Search + \nmulti PDF chat + save prompts to AI Memory + API and more',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By Keymate AI Inc.',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'AutoExpert (Academic)',
          description:
              'Upon uploading a research paper, I provide a concise analysis \ncovering its authors, key findings, methodology, and relevance...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By llmimagineers.com',
          onPress: () {},
        ),
        const Gap(5),
        MyListTile(
          title: 'Video Insights: Summaries/Vision/Transcription',
          description:
              'Chat with any video or audio. High-quality search, \nsummarization, insights, multi-language transcriptions, and m...',
          imagePath: 'assets/icons/kayak-icon.png',
          link: 'By videoinsights.ai',
          onPress: () {},
        ),
        const Gap(5),
      ],
    );
  }
}
