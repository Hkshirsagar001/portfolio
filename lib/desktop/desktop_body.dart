import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/desktop/about_me.dart';
import 'package:my_portfolio/desktop/d_lets_connect.dart';
import 'package:my_portfolio/desktop/d_my_experiance.dart';
import 'package:my_portfolio/desktop/project_section.dart';
import 'package:url_launcher/url_launcher.dart';

// Reusable Hover Image Widget
class HoverImage extends StatefulWidget {
  final String imagePath;
  final double width;
  final double height;
  final double borderRadius;

  const HoverImage({
    super.key,
    required this.imagePath,
    this.width = 500,
    this.height = 500,
    this.borderRadius = 20,
  });

  @override
  State<HoverImage> createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          boxShadow: isHovering
              ? [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 120,
                    spreadRadius: 18,
                  ),
                ]
              : [],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          child: Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Reusable Hover Button Widget
class HoverButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 187,
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xffD3E97A),
            boxShadow: isHovering
                ? [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      blurRadius: 120,
                      spreadRadius: 18,
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _letsConnectKey = GlobalKey();
  final GlobalKey _projectSectionKey = GlobalKey();
  final GlobalKey _aboutMeKey = GlobalKey();

  // Function to launch the URL
void _launchURL(String url) async {
  final Uri uri = Uri.parse(url); // Convert string to Uri
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}


  void _scrollToLetsConnect() {
    final context = _letsConnectKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollToProjectSection() {
    final context = _projectSectionKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollToAboutMe() {
    final context = _aboutMeKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: GestureDetector(
          onTap: _scrollToTop,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              "HARSH KSHIRSAGAR     (+91)9022459086",
              style: GoogleFonts.bebasNeue(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextButton(
              onPressed: _scrollToProjectSection,
              child: Text(
                "Work",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextButton(
              onPressed: _scrollToAboutMe,
              child: Text(
                "About",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextButton(
              onPressed: _scrollToLetsConnect,
              child: Text(
                "Contact",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Text column
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 108),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HI, I AM\nHARSH KSHIRSAGAR.",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 101,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Flutter developer specializing in cross-platform mobile solutions that\n merge creativity with functionality.",
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Contact buttons
                      Row(
                        children: [
                          HoverButton(
                            text: "CONTACT ME",
                            onPressed: _scrollToLetsConnect,
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
      onTap: () => _launchURL('https://www.linkedin.com/in/harsh-kshirsagar-422675207/'),
      child: Image.asset(
        "assets/Frame 3.png", // LinkedIn
        width: 50,
        height: 50,
      ),
    ),
                          const SizedBox(width: 20),
                         GestureDetector(
      onTap: () => _launchURL('https://github.com/Hkshirsagar001'),
      child: Image.asset(
        "assets/Frame 4.png", // github
        width: 50,
        height: 50,
      ),
    ),
                        ],
                      )
                    ],
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(108.0),
                    child: HoverImage(
                      imagePath: "assets/profile/WITH bg.png",
                      width: 500,
                      height: 500,
                      borderRadius: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Keyed ProjectSection
            Container(
              key: _projectSectionKey,
              child: const ProjectSection(),
            ),
            // Keyed DAboutMe Section
            Container(
              key: _aboutMeKey,
              child: const DAboutMe(),
            ),
            const DMyExperiance(),
            // Keyed DLetsConnect Section
            Container(
              key: _letsConnectKey,
              child: const DLetsConnect(),
            ),
          ],
        ),
      ),
    );
  }
}
