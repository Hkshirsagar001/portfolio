import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectSection extends StatefulWidget {
  const ProjectSection({super.key});

  @override
  State<ProjectSection> createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(108.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FEATURED PROJECTS",
              style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 76),
            ),
            const SizedBox(height: 16),
            Text(
              "Here are some of the selected projects that showcase my passion for \n development",
              style: GoogleFonts.manrope(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 80),
            // Scrollable Row for Projects
            ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 500,
                            height: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xff1A1A1A),
                            ),
                            child: Image.asset("assets/profile/Mockup.png"),
                          ),
                          const SizedBox(width: 48),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                      color: const Color(0xffC7C7C7),
                                      fontSize: 18),
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
                                  Image.asset("assets/view project.png"),
                                  const SizedBox(width: 24),
                                  Image.asset("assets/view project (1).png"),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 80),
         
          ],
        ),
      ),
    );
  }
}

