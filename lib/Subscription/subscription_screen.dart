import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Gap(height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/icons/mainIcon.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: Text(
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        ),
                        'Chat App'),
                  ),
                ],
              ),
              Gap(height * 0.06),
              Padding(
                padding: EdgeInsets.only(left: width * 0.1,),
                child: Row(
                  children: [
                    Text(
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w800),
                        ),
                        'Chat App - 4'),
                  ],
                ),
              ),
              Gap(height * 0.02),
              Row(
                children: [
                  Flexible(
                    child: Text(
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.w500,
                            color: Color(0xff717171)
                          ),
                        ),
                        'Our most powerful model,capable of advanced reasoning and creativity.'),
                  )
                ],
              ),
              Gap(height * 0.02),
              ListTile(
                leading: Image.asset('assets/icons/human.png'),
                title: Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: height * 0.027,
                          fontWeight: FontWeight.w700,
                      ),
                    ),
                    'Exclusive to Plus'),
                subtitle: Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff717171)
                      ),
                    ),
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
              ),
              Gap(height * 0.01),
              ListTile(
                leading: Image.asset('assets/icons/add.png'),
                title: Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: height * 0.027,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    'Built for quality'),
                subtitle: Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff717171)
                      ),
                    ),
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
              ),
              Gap(height * 0.01),
              ListTile(
                leading: Image.asset('assets/icons/clock.png'),
                title: Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: height * 0.027,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    'Limited use'),
                subtitle: Text(
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff717171)
                      ),
                    ),
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
              ),
              Gap(height * 0.1),
              const Text('Auto-renews for \$19.99/month until canceled'),
              Gap(height * 0.01),
              Container(
                width: width * 0.9,
                height: height * 0.07,
                decoration: BoxDecoration(
                  color: const Color(0xff9747FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                      style: GoogleFonts.averageSans(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      'Upgrade to Plus'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
