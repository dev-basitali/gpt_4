import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpt_4/Screens/Auth/enterPass_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                Gap(height * 0.05),
                Text(
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                    )),
                    'Welcome back'),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05, top: height * 0.05),
                  child: Row(
                    children: [
                      Text(
                          style: GoogleFonts.averageSans(
                            textStyle: const TextStyle(
                                color: Color(0xff717171),
                                fontWeight: FontWeight.w500),
                          ),
                          'Email address'),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => const EnterPassword()));
                  },
                  child: Container(
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
                          'Continue'),
                    ),
                  ),
                ),
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: GoogleFonts.averageSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        'Don’t have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                          style: GoogleFonts.averageSans(
                            textStyle: const TextStyle(
                              color: Color(0xff9747FF),
                              fontSize: 16,
                            ),
                          ),
                          ' Sign up'),
                    ),
                  ],
                ),
                Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: width * 0.4,
                      color: const Color(0xffE0E0E0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      child: Center(
                        child: Text(
                            style: GoogleFonts.averageSans(
                              textStyle: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            'OR'),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: width * 0.4,
                      color: const Color(0xffE0E0E0),
                    ),
                  ],
                ),
                Gap(15),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xffE0E0E0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(image: AssetImage('assets/icons/google.png')),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.01),
                          child: Center(
                              child: Text(
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff222222),
                                    ),
                                  ),
                                  'Continue with Google')),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(15),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xffE0E0E0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(image: AssetImage('assets/icons/apple.png')),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.01),
                          child: Center(
                              child: Text(
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  'Continue with Apple')),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
