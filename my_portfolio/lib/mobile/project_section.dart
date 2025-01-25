import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MProjectSection extends StatefulWidget {
  const MProjectSection({super.key});

  @override
  State<MProjectSection> createState() => _MProjectSectionState();
}

class _MProjectSectionState extends State<MProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "FEATURED PROJECTS",
          style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43),
        ),
        Text(
          "Here are some of the selected projects that showcase my passion for  development",
          style: GoogleFonts.manrope(color: Colors.white, fontSize: 16),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 343,
              height: 343,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xff1A1A1A)),
            ),
          ),
        ),
        Text(
          "Promotional landing page for our favorite show",
          style: GoogleFonts.manrope(color: Colors.white, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 430,
          height: 156,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
            style: GoogleFonts.manrope(
                color: const Color(0xffC7C7C7), fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "PROJECT INFO",
            style: GoogleFonts.manrope(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("assets/view project.png"),
              const SizedBox(
                width: 24,
              ),
              Image.asset("assets/view project (1).png")
            ],
          ),
        )
      ],
    );
  }
}
