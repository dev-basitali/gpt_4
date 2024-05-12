import 'package:flutter/material.dart';
import '../../Modules/Education.dart';
import '../../Modules/by_gpt.dart';
import '../../Modules/dall_e.dart';
import '../../Modules/featured.dart';
import '../../Modules/lifeStyle.dart';
import '../../Modules/productivity.dart';
import '../../Modules/programing.dart';
import '../../Modules/research_and_analysis.dart';
import '../../Modules/tabs.dart';
import '../../Modules/trending.dart';
import '../../Modules/writing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: screenWidth * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFFd5d2d9),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.01,
                  vertical: screenHeight * 0.02,
                ),
                hintText: 'Search Public GPTs',
                hintStyle: const TextStyle(
                      color: Color(0xFF4F5B79),
                      fontWeight: FontWeight.w500),
                enabled: true,
                focusColor: const Color(0xffa19fa4),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color(0xFFF9F9F9),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Color(0xFFF9F9F9),
                  ),
                ),
              ),
            ),
          ),
          bottom:  const TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
            tabs: [
              Tab(
                child: TAB(
                  title: 'Top Picks',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'My GPTs',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Featured',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Trending',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'By CHatGPT',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'DALL-E',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Writing',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Productivity',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Research & Analysis',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Programming',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Education',
                ),
              ),
              Tab(
                child: TAB(
                  title: 'Lifestyle',
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //------------------ Top Picks ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Featured(),
                    Trending(),
                    ByChatGPT(),
                    DALL_E(),
                    Writing(),
                    Productivity(),
                    ResearchAndAnalysis(),
                    Programing(),
                    Education(),
                    LifeStyle(),
                  ],
                ),
              ),
            ),
            //------------------ My GPTs ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),
            //------------------ Featured ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Featured(),
                  ],
                ),
              ),
            ),
            //------------------ Trending ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Trending(),
                  ],
                ),
              ),
            ),
            //------------------ By ChatGPT ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ByChatGPT(),
                  ],
                ),
              ),
            ),
            //------------------ DALL_E ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    DALL_E(),
                  ],
                ),
              ),
            ),
            //------------------ Writing ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Writing(),
                  ],
                ),
              ),
            ),
            //------------------ Productivity ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [

                    Productivity(),
                  ],
                ),
              ),
            ),
            //------------------ Research & Analysis ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ResearchAndAnalysis(),
                  ],
                ),
              ),
            ),
            //------------------ Programing ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Programing(),
                  ],
                ),
              ),
            ),
            //------------------ Education ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Education(),
                  ],
                ),
              ),
            ),
            //------------------ LifeStyle ----------------//
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    LifeStyle(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
