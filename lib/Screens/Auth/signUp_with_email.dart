import 'dart:developer';

import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpt_4/Services/auth_services.dart';

import '../Chat/textToText_screen.dart';

class SignUpWithEmail extends StatefulWidget {
  const SignUpWithEmail({super.key});

  @override
  State<SignUpWithEmail> createState() => _SignUpWithEmailState();
}

class _SignUpWithEmailState extends State<SignUpWithEmail> {

  final _auth = AuthService();
  final email =TextEditingController();
  final password = TextEditingController();

  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }
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
                    'Sign Up With Email'),
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
                    controller: email,
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
                    obscureText: true,
                    controller: password,
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
                const Gap(60),
                InkWell(
                  onTap: (){
                    signUp();
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
                          ' Sign In'),
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
 void signUp() async{
   try {
     final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: email.text,
       password: password.text,
     );
     if(credential.additionalUserInfo!.isNewUser){
       Navigator.push(context, MaterialPageRoute(builder: (builder) => TextToText()));
       email.clear();
       password.clear();
     }

     else{
       CoolAlert.show(
         context: context,
         type: CoolAlertType.error,
         text: "User already exists",
       );
     }

   } on FirebaseAuthException catch (e) {
     if (e.code == 'weak-password') {
       print('The password provided is too weak.');
       CoolAlert.show(
         context: context,
         type: CoolAlertType.error,
         text: "Your password is too weak",
       );
     } else if (e.code == 'email-already-in-use') {
       print('The account already exists for that email.');
       CoolAlert.show(
         context: context,
         type: CoolAlertType.error,
         text: "The account already exists for that email.",
       );
     }
   } catch (e) {
     print(e);
   }
  }
}
