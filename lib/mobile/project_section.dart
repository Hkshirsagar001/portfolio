import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MProjectSection extends StatefulWidget {
  const MProjectSection({super.key});

  @override
  State<MProjectSection> createState() => _MProjectSectionState();
}

class _MProjectSectionState extends State<MProjectSection> {
  // Function to launch URLs
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
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
          ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 343,
                            height: 343,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff1A1A1A),
                            ),
                            child: Image.asset("assets/profile/Mockup.png"),
                          ),
                        ),
                        const SizedBox(height: 48),
                        Text(
                          "EventAura (Event Management App)",
                          style: GoogleFonts.manrope(
                              color: Colors.white, fontSize: 28),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 576,
                          child: Text(
                            " EventAura is a comprehensive Event Management app designed to streamline the entire event process for both attendees and organizers. The app integrates event discovery, booking, management, and analytics.",
                            style: GoogleFonts.manrope(
                                color: const Color(0xffC7C7C7), fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          "PROJECT INFO",
                          style: GoogleFonts.manrope(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "_____________________________________",
                          style: GoogleFonts.manrope(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Event Discovery & Booking:   Find, explore, and book events easily.",
                          style: GoogleFonts.manrope(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Organizer Dashboard: Manage events, attendees, and track revenue.",
                          style: GoogleFonts.manrope(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Payment Gateway Integration & API Binding: Seamless payment via \nStripe and API integration for backend functionalities.",
                          style: GoogleFonts.manrope(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "_____________________________________",
                          style: GoogleFonts.manrope(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => _launchURL(
                                  "https://drive.google.com/drive/folders/1t3peVBawM5oxiIcMJqO-L3bbdJu9ktRi"),
                              child: Image.asset("assets/view project.png"),
                            ),
                            const SizedBox(width: 24),
                            GestureDetector(
                              onTap: () => _launchURL(
                                  "https://github.com/Hkshirsagar001/Mehfil_event_Management_app/tree/main/mehfil"),
                              child: Image.asset("assets/view project (1).png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
