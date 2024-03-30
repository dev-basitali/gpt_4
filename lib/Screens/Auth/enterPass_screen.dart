import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpt_4/Screens/Auth/signup_screen.dart';
import 'package:gpt_4/Screens/Chat/textToText_screen.dart';

class EnterPassword extends StatefulWidget {
  const EnterPassword({super.key});

  @override
  State<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  bool isEditable = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.1),
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
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                    )),
                    'Enter Your \nPassword'),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.05, top: height * 0.05),
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
                    enabled: true,
                    readOnly: !isEditable,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            isEditable = !isEditable;
                          });
                        },
                        child: Text(
                            style: TextStyle(color: Color(0xff9747FF)),
                            isEditable ? 'Edit' : 'Edit'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.05, top: height * 0.05),
                  child: Row(
                    children: [
                      Text(
                          style: GoogleFonts.averageSans(
                            textStyle: const TextStyle(
                                color: Color(0xff717171),
                                fontWeight: FontWeight.w500),
                          ),
                          'Password'),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.05, top: height * 0.05),
                  child: Row(
                    children: [
                      Text(
                          style: GoogleFonts.averageSans(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff9747FF),
                                fontWeight: FontWeight.w500),
                          ),
                          'forget password?'),
                    ],
                  ),
                ),
                const Gap(20),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TextToText()));
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
                Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: GoogleFonts.averageSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        'Don’t have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
