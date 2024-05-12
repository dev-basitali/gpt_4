import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpt_4/Screens/Auth/signUp_with_email.dart';
import 'package:gpt_4/Screens/Auth/signin_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Padding(
             padding: EdgeInsets.only(bottom: height * 0.3),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Image(image: AssetImage('assets/icons/mainIcon.png'),),
                 Text(
                     style: GoogleFonts.lato(
                       textStyle: const TextStyle(
                           fontSize: 25, fontWeight: FontWeight.w800),
                     ),
                     'Chat App'),
               ],
             ),
           ),
            Container(
              height: height * 0.4,
              width: width *1,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Gap(15),
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage('assets/icons/apple.png')),

                            Padding(
                              padding: EdgeInsets.only(left: width * 0.01),
                              child: Center(child: Text(
                                style: GoogleFonts.lato(
                                  textStyle : const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                                  'Continue with Apple')),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(15),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2C2C2E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage('assets/icons/google.png')),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.01),
                              child: Center(child: Text(
                                  style: GoogleFonts.lato(
                                    textStyle : const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
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
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => SignUpWithEmail()));
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2C2C2E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage('assets/icons/mail.png')),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: Center(child: Text(
                                  style: GoogleFonts.lato(
                                    textStyle : const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                    ),
                                  ),
                                  'Sign up with Email')),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(15),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignIn()),
                        );
                      },
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xff2C2C2E),
                            width: 4,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text(
                                style: GoogleFonts.lato(
                                  textStyle : const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                  ),
                                ),
                                'Log in')),

                          ],
                        ),
                      ),
                    ),
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
