import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DMyExperiance extends StatefulWidget {
  const DMyExperiance({super.key});

  @override
  State<DMyExperiance> createState() => _DMyExperianceState();
}

class _DMyExperianceState extends State<DMyExperiance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 40), 
      child: SingleChildScrollView( 
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "MY EXPERIENCE" 
            Padding(
              padding: const EdgeInsets.only(right: 60), 
              child: Text(
                "MY EXPERIENCE",
                style: GoogleFonts.bebasNeue(fontSize: 76, color: Colors.white),
              ),
            ),
            const SizedBox(width: 100,), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Job title and dates row
                Container(
                  width: 416 + 176, 
                  padding: const EdgeInsets.only(bottom: 12), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile Application Development Intern",
                        style: GoogleFonts.manrope(
                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(width: 40),
                      Expanded( 
                        child: Text(
                          "1 Aug 2024 - present",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.manrope(
                              fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 10), 
                
                // Company Name
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Incubators Systems",
                    style: GoogleFonts.manrope(
                        fontSize: 18, fontWeight: FontWeight.w600, color: const Color(0xffD3E97A)),
                  ),
                ),

                // Job Description Container with padding and background

                Container(
                  width: 600, 
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6), 
                    borderRadius: BorderRadius.circular(8), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4), // Shadow offset
                      ),
                    ],
                  ),
                  child: Text(
                    "I collaborated with the development team to design and implement mobile applications using the Flutter framework, contributing to the creation of user-friendly and efficient solutions. My role also involved assisting in the development and maintenance of existing mobile applications, ensuring they remained up-to-date and functional. Additionally, I conducted thorough testing and debugging to identify and resolve issues, guaranteeing optimal functionality and usability. Furthermore, I actively participated in team discussions, sharing ideas and insights, and contributed to project documentation to support the overall development process.",
                    style: GoogleFonts.manrope(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
