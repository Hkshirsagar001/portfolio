import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MAboutme extends StatefulWidget {
  const MAboutme({super.key});

  @override
  State<MAboutme> createState() => _MAboutmeState();
}

class _MAboutmeState extends State<MAboutme> {
  @override
  Widget build(BuildContext context) {
    bool isHovered = false;

    // Function to launch the URL
    void launchURL(String url) async {
      final Uri uri = Uri.parse(url); // Convert string to Uri
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

  Widget buildHoverImage(String assetPath, String url, {double? imageWidth}) {
  return MouseRegion(
    onEnter: (event) => setState(() => isHovered = true),
    onExit: (event) => setState(() => isHovered = false),
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: isHovered
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
        onTap: () => launchURL(url), // Handle the action for the URL
        child: Image.asset(
          assetPath,
          width: imageWidth, // Accept custom width
        ),
      ),
    ),
  );
}


    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ABOUT ME",
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43),
          ),
          Text(
            "Hi, I'm Harsh Kshirsagar, a BE graduate in Information Technology from Pune, ",
            style: GoogleFonts.manrope(fontSize: 22, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '''Currently, I am learning and expanding my skills in Flutter development while exploring ReactJS to dive into modern web development.

Outside of work, I enjoy watching movies, playing video games, and learning music. I’ve also been a proud member of  IODump and the NSS Unit A-122, contributing to various social service initiatives.

I’m passionate about innovation and always eager to collaborate on projects that make a difference. Let’s create something impactful together!''',
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
          const SizedBox(height: 48),
          Center(
            child: Row(
              children: [
                
                buildHoverImage("assets/button (1).png",
                    "https://drive.google.com/drive/folders/1t3peVBawM5oxiIcMJqO-L3bbdJu9ktRi", imageWidth: 200), // Replace with your document URL
                const SizedBox(width: 10),
                buildHoverImage("assets/Frame 3.png",
                    "https://www.linkedin.com/in/harshkshirsagar"), // LinkedIn URL
                const SizedBox(width: 10),
                buildHoverImage("assets/Frame 4.png",
                    "https://github.com/Hkshirsagar001"), // GitHub URL
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Text(
            "MY CAPABILITIES",
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43),
          ),
          Text(
            'I am always looking to add more skills.',
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              children: [
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/logo/icons8-java-logo-96.png",
                            width: 35,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Java ",
                            style: GoogleFonts.manrope(
                                fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 46,
                  // width: 87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,), 
          Center(
            child: Row(
              children: [
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                ),
                const SizedBox(
                  width: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
           const SizedBox(height: 20,),
          Center(
            child: Row(
              children: [
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                ),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logo/ios-png-4085.png",
                          width: 80,
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
                  height: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white38)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
