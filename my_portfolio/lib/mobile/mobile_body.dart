import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart'; // For opening links
import 'package:my_portfolio/mobile/m_aboutme.dart';
import 'package:my_portfolio/mobile/m_lets_connect.dart';
import 'package:my_portfolio/mobile/m_my_experiance.dart';
import 'package:my_portfolio/mobile/project_section.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final ScrollController _scrollController = ScrollController();

  // Define GlobalKeys for each section
  final GlobalKey _workKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();


  // Function to handle menu item selection and scroll to the specific section
  void _onMenuItemSelected(String value) {
    GlobalKey targetKey;

    switch (value) {
      case 'Work':
        targetKey = _workKey;
        break;
      case 'About':
        targetKey = _aboutKey;
        break;
      case 'Contact':
        targetKey = _contactKey;
        break;
      default:
        return;
    }

    // Scroll to the specific section
    final RenderBox? renderBox =
        targetKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final offset = renderBox.localToGlobal(Offset.zero).dy +
          _scrollController.offset; // Account for current scroll position
      _scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  // Function to open a URL in the default browser
  void _openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "HARSH KSHIRSAGAR",
          style: GoogleFonts.bebasNeue(color: const Color(0xffC7C7C7)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: PopupMenuButton<String>(
              icon: Image.asset("assets/Frame 35.png"), // Your image asset
              onSelected: _onMenuItemSelected,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'Work',
                    child: Text(
                      'Work',
                      style: GoogleFonts.manrope(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'About',
                    child: Text(
                      'About',
                      style: GoogleFonts.manrope(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Contact',
                    child: Text(
                      'Contact',
                      style: GoogleFonts.manrope(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ];
              },
              offset: Offset(0, 40),
              color: Colors.black, // This will change the background color to black
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController, // Attach the ScrollController
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HI, I AM\nHARSH KSHIRSAGAR.",
                style: GoogleFonts.bebasNeue(
                  fontSize: 57,
                  color: Colors.white,
                ),
              ),
              Text(
                "Flutter developer specializing in cross-platform mobile solutions that merge creativity with functionality.",
                style: GoogleFonts.manrope(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Scroll to Contact Section
                      _onMenuItemSelected('Contact');
                    },
                    child: Image.asset("assets/button.png"),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _openURL("https://www.linkedin.com/in/harsh-kshirsagar-422675207/");
                    },
                    child: Image.asset("assets/Frame 3.png"),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _openURL("https://github.com/Hkshirsagar001");
                    },
                    child: Image.asset("assets/Frame 4.png"),
                  ),
                ],
              ),
              const SizedBox(height: 64),
              Center(
                child: Container(
                  width: 343,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/profile/WITH bg.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 64),
             
              const SizedBox(height: 64),
              // Assign GlobalKey to each section
              Container(key: _workKey, child: MProjectSection()),
              const SizedBox(height: 64),
             
          
              Container(key: _aboutKey, child: MAboutme()),
              const SizedBox(height: 64),
             
           
              Container(key: _contactKey, child: MMyExperiance()),
              const SizedBox(height: 64),
             
              
              MLetsConnect(),
            ],
          ),
        ),
      ),
    );
  }
}
