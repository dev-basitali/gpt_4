
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Subscription/subscription_screen.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios),),
        centerTitle: true,
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.04),
              child: const Row(
                children: [
                  Text(
                      style: TextStyle(
                          color: Color(0xff616161)
                      ),
                      'ACCOUNT'),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/mailuser.png'),
                title: const Text('Email'),
                trailing: const Text('test@outlook.com'),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen()));
              },
              child: ListTile(
                leading: Image.asset('assets/icons/star.png'),
                title: const Text('Subscription'),
                subtitle: const Text(
                    style: TextStyle(
                      color: Color(0xff9747FF),
                    ),
                    'Upgrade to ChatGPT PLUS'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/database.png'),
                title: const Text('Data Controls'),
                trailing: Image.asset('assets/icons/forward.png'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/instructions.png'),
                title: const Text('Custom instructions'),
                trailing: SizedBox(
                  height: height * 0.05,
                  width: width * 0.12,
                  child: Row(
                    children: [
                      Text(
                        style: GoogleFonts.averageSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff717171),
                          ),
                        ),
                          'None   '),
                      Image.asset('assets/icons/forward.png'),
                    ],
                  ),
                ),
              ),
            ),
            Gap(height * 0.02),
            Padding(
              padding: EdgeInsets.only(left: width * 0.04),
              child: const Row(
                children: [
                  Text(
                      style: TextStyle(
                          color: Color(0xff616161)
                      ),
                      'APP'),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/circle.png'),
                title: const Text('Color Scheme'),
                trailing: SizedBox(
                  height: height * 0.05,
                  width: width * 0.15,
                  child: Row(
                    children: [
                      Text(
                          style: GoogleFonts.averageSans(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff717171),
                            ),
                          ),
                          'System   '),
                      Image.asset('assets/icons/forward.png'),
                    ],
                  ),
                ),
              ),
            ),
            Gap(height * 0.02),
            Padding(
              padding: EdgeInsets.only(left: width * 0.04),
              child: const Row(
                children: [
                  Text(
                      style: TextStyle(
                          color: Color(0xff616161)
                      ),
                      'SPEECH'),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/mic.png'),
                title: const Text('Main Language'),
                trailing: SizedBox(
                  height: height * 0.05,
                  width: width * 0.21,
                  child: Row(
                    children: [
                      Text(
                          style: GoogleFonts.averageSans(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff717171),
                            ),
                          ),
                          'Auto-Detect   '),
                      Image.asset('assets/icons/forward.png'),
                    ],
                  ),
                ),
              ),
            ),
            Gap(height * 0.02),
            Padding(
              padding: EdgeInsets.only(left: width * 0.04),
              child: const Row(
                children: [
                  Text(
                    style: TextStyle(
                      color: Color(0xff616161)
                    ),
                      'ABOUT'),
                ],
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Image.asset('assets/icons/help.png'),
                title: const Text('Help Center'),
                trailing: Image.asset('assets/icons/forward.png'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/notebook.png'),
                title: const Text('Terms of Use'),
                trailing: Image.asset('assets/icons/forward.png'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/privacy.png'),
                title: const Text('Privacy Policy'),
                trailing: Image.asset('assets/icons/forward.png'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/Book.png'),
                title: const Text('Licenses'),
                trailing: Image.asset('assets/icons/forward.png'),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset('assets/icons/SignOut.png'),
                title: const Text('Sign Out'),
                trailing: Image.asset('assets/icons/forward.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
