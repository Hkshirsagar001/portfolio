import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DResume extends StatefulWidget {
  const DResume({super.key});

  @override
  State<DResume> createState() => _DResumeState();
}

class _DResumeState extends State<DResume> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
       
        //summary

        Column(
          children: [
            Text("Sumary",
                style: GoogleFonts.manrope(color: Colors.white, fontSize: 18)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                    ),
                    Container(
                      width: 2, // Thickness of the line
                      height: 200, // Height of the line
                      color: Colors.blue, // Color of the line
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 580,
                      child: Text(
                        "Seeking a career opportunity and be a part of organization where i ca get the gateway to enhance my knowledge, skills and to reach in the field and to be a dedicated, determined and contributing to organization's overall success",
                        style: GoogleFonts.manrope(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 20,), 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "• ",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Text(
                          "Pune, Maharashtra",
                          style: GoogleFonts.manrope(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                     const SizedBox(height: 10,), 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "• ",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Text(
                          "(+91)902245908",
                          style: GoogleFonts.manrope(
                              color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                     const SizedBox(height: 10,), 
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "• ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "harsh.kshirsagar001@gmail.com",
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 18
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),

        const SizedBox(width: 200,),

        //education

        Column(
          children: [
            Text("Education",
                style: GoogleFonts.manrope(
                  color: Colors.white,
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                    ),
                    Container(
                      width: 2, // Thickness of the line
                      height: 80, // Height of the line
                      color: Colors.blue, // Color of the line
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      
                      child: Text(
                        "BE in Information Technology",
                        style: GoogleFonts.manrope(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                     const SizedBox(height: 10,), 
                    Center(
                      child: SizedBox(
                        
                        child: Text(
                          "2021 - 2024",
                          style: GoogleFonts.manrope(color: Colors.white),
                        ),
                      ),
                    ),
                     const SizedBox(height: 10,), 
                    SizedBox(
                    
                      child: Text(
                        "Savitribai Phule Pune University, Pune, Maharashtra",
                        style: GoogleFonts.manrope(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                    ),
                    Container(
                      width: 2, // Thickness of the line
                      height: 80, // Height of the line
                      color: Colors.blue, // Color of the line
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                    
                      child: Text(
                        "HSC with Science",
                        style: GoogleFonts.manrope(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                     const SizedBox(height: 10,), 
                    Center(
                      child: SizedBox(
                      
                        child: Text(
                          "2018 - 2020",
                          style: GoogleFonts.manrope(color: Colors.white),
                        ),
                      ),
                    ),
                     const SizedBox(height: 10,), 
                    SizedBox(
                    
                      child: Text(
                        "Pemraj Sarda Jr. College, Ahilyanagar, Maharashtra",
                        style: GoogleFonts.manrope(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
