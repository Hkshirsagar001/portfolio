import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MMyExperiance extends StatefulWidget {
  const MMyExperiance({super.key});

  @override
  State<MMyExperiance> createState() => _MMyExperianceState();
}

class _MMyExperianceState extends State<MMyExperiance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MY EXPERIANCE",
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43),
          ),
          Text(
            "Mobile Application Development Intern",
            style: GoogleFonts.manrope(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(width: 40),
          Text(
            "1 Aug 2024 - present",
            textAlign: TextAlign.right,
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
           SizedBox(height: 12),

          Text(
            "Incubators Systems",
            style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xffD3E97A)),
          ),
            SizedBox(height: 12),
          Text(
            "• I collaborated with the development team to design and implement mobile applications using the Flutter framework, contributing to the creation of user-friendly and efficient solutions.",
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
          SizedBox(height: 8), // Add space between the lines
          Text(
            "• My role also involved assisting in the development and maintenance of existing mobile applications, ensuring they remained up-to-date and functional.",
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
          SizedBox(height: 8),
          Text(
            "• Additionally, I conducted thorough testing and debugging to identify and resolve issues, guaranteeing optimal functionality and usability.",
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
          SizedBox(height: 8),
          Text(
            "• Furthermore, I actively participated in team discussions, sharing ideas and insights, and contributed to project documentation to support the overall development process.",
            style: GoogleFonts.manrope(
                fontSize: 16, color: const Color(0xffC7C7C7)),
          ),
        ],
      ),
    );
  }
}
