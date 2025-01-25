import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MAboutme extends StatefulWidget {
  const MAboutme({super.key});

  @override
  State<MAboutme> createState() => _MAboutmeState();
}

class _MAboutmeState extends State<MAboutme> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ABOUT ME",
          style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43),
        ),
        Text(
          "I am a front-end developer in Sydney.\nHas Mechanical Engineering background.",
          style: GoogleFonts.manrope(fontSize: 20, color: Colors.white),
        ),
        Text(
          "I am a front-end developer based in Sydney looking for exciting opportunities. Has Mechanical Engineering background. Likes to focus on accessibility when developing. Passionate and curious about solving problems. Currently, I’m exploring Reactjs, Webflow and a bit of Designing. While I am not programming, I enjoy playing football, photography and playing Valorant. Learning more to improve skill.",
          style:
              GoogleFonts.manrope(fontSize: 18, color: const Color(0xffC7C7C7)),
        ),
      ],
    );
  }
}
