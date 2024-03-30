import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpt_4/Screens/Chat/text_to_image_screen.dart';

import '../Screens/Chat/image_to_video.dart';
import '../Screens/Chat/textToText_screen.dart';
import '../Screens/Chat/text_to_audio.dart';
import '../Screens/UserProfile/userProfile_screen.dart';
import '../Screens/home_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Container(
            height: height * 0.93,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: Container(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45 ),
                      color: const Color(0xFFd5d2d9),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 0.01,
                          vertical: height * 0.01,
                        ),

                        prefix: Padding(
                          padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03, top: height * 0.001),
                          child: Image.asset('assets/icons/search.png'),
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
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
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => TextToText()));
                  },
                  child: ListTile(
                    title: Text(
                      style: GoogleFonts.averageSans(
                        textStyle : TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        )
                      ),
                        'Text to Text'),
                    leading: const Image(image: AssetImage('assets/icons/edit.png')),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => TextToImage()));
                  },
                  child: ListTile(
                    title: Text(
                        style: GoogleFonts.averageSans(
                            textStyle : TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            )
                        ),
                        'Text to Image'),
                    leading: const Image(image: AssetImage('assets/icons/edit.png')),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => TextToAudio()));
                  },
                  child: ListTile(
                    title: Text(
                        style: GoogleFonts.averageSans(
                            textStyle : TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            )
                        ),
                        'Text to Audio'),
                    leading: const Image(image: AssetImage('assets/icons/edit.png')),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => ImageToVideo()));
                  },
                  child: ListTile(
                    title: Text(
                        style: GoogleFonts.averageSans(
                            textStyle : TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            )
                        ),
                        'Image to Video'),
                    leading: const Image(image: AssetImage('assets/icons/edit.png')),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => const HomeScreen()));
                  },
                  child: ListTile(
                    title: Text(
                        style: GoogleFonts.averageSans(
                            textStyle : TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                            )
                        ),
                        'Explore GPTs'),
                    leading: Image(image: AssetImage('assets/icons/explore.png')),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()));
            },
            child: SizedBox(
              width: width * 1,
              height: height * 0.07,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.black54,
                  child: Image.asset(
                      'assets/icons/user.png'),
                ),
                title: Text('Basit Ali'),
                trailing: Image.asset('assets/icons/more.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
