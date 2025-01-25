import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/desktop/d_resume.dart';
import 'package:url_launcher/url_launcher.dart';

class DAboutMe extends StatefulWidget {
  const DAboutMe({super.key});

  @override
  State<DAboutMe> createState() => _DAboutMeState();
}

class _DAboutMeState extends State<DAboutMe> {
  bool _isHovered = false;


 // Function to launch the URL
void _launchURL(String url) async {
  final Uri uri = Uri.parse(url); // Convert string to Uri
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}


  Widget _buildHoverImage(String assetPath, String url) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 40,
                    spreadRadius: 10,
                  ),
                ]
              : [],
        ),
        child: GestureDetector(
          onTap: () => _launchURL(url), // Handle the download action
          child: Image.asset(assetPath),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 108,),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "ABOUT ME",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 101, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 213,
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, I'm Harsh Kshirsagar, a BE graduate in Information Technology from Pune, ",
                        style: GoogleFonts.manrope(
                            fontSize: 32, color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 704,
                        child: Text(
                          ''' Currently, I am learning and expanding my skills in Flutter development while exploring ReactJS to dive into modern web development.

I have a strong foundation in programming and problem-solving, with experience in building cross-platform mobile applications using Flutter and tools like Firebase and Figma. My technical knowledge also includes Android, iOS, web development, Java, DSA, and operating systems.

Outside of work, I enjoy watching movies, playing video games, and learning music. I’ve also been a proud member of  IODump and the NSS Unit A-122, contributing to various social service initiatives.

I’m passionate about innovation and always eager to collaborate on projects that make a difference. Let’s create something impactful together!  
                             ''',
                          style: GoogleFonts.manrope(
                              fontSize: 18, color: const Color(0xffC7C7C7)),
                        ),
                      ),
                      const SizedBox(height: 48),
                      Row(
                        children: [
                          _buildHoverImage("assets/button (1).png", "https://drive.google.com/drive/folders/1t3peVBawM5oxiIcMJqO-L3bbdJu9ktRi"), // Replace with your document URL
                          const SizedBox(width: 18),
                          _buildHoverImage("assets/Frame 3.png", "https://www.linkedin.com/in/harshkshirsagar"), // LinkedIn URL
                          const SizedBox(width: 18),
                          _buildHoverImage("assets/Frame 4.png", "https://github.com/Hkshirsagar001"), // GitHub URL
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: 48),

            // My capabalities

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "MY CAPABILITIES",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 76, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 143,
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 704,
                        child: Text(
                          "I am always looking to add more skills.Morbi egestas neque eu blandit fermentum. Nulla ac lobortis ligula. Pellentesque ac ex at purus faucibus tristique ut et dolor. ",
                          style: GoogleFonts.manrope(
                              fontSize: 18, color: const Color(0xffC7C7C7)),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/icons8-dart-96.png",
                                    width: 30,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Dart",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/icons8-java-logo-96.png",
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Java",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/pngwing.com.png",
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Flutter",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/icons8-google-firebase-console-96.png",
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Firebase",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "SQFlite",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "MySql",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/icons8-android-logo-96.png",
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Android",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/ios-png-4085.png",
                                    width: 60,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/icons8-web-96.png",
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Web",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: Colors.white38)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/logo/icons8-figma-96.png",
                                    width: 40,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Figma",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 48,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
