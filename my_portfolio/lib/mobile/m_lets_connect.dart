import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MLetsConnect extends StatefulWidget {
  const MLetsConnect({super.key});

  @override
  State<MLetsConnect> createState() => _MLetsConnectState();
}

class _MLetsConnectState extends State<MLetsConnect> {

  // Function to launch URLs
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(  // Wrap the Column in a SingleChildScrollView
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [  
            Text(
              "LET'S CONNECT",
              style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 43),
            ),
            GestureDetector(
              onTap: () => _launchURL("mailto:harsh.kshirsagar@gmail.com"), // Email link
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "say hello at ",
                        style: GoogleFonts.manrope(
                            fontSize: 18, color: Colors.white)),
                    TextSpan(
                      text: "harsh.kshirsagar@gmail.com",   // email link
                      style: GoogleFonts.manrope(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.amber,
                        fontSize: 18,
                        color: const Color(0xffD3E97A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () => _launchURL("https://drive.google.com/drive/folders/1t3peVBawM5oxiIcMJqO-L3bbdJu9ktRi"), // Resume link
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "for more info, here's my",
                        style: GoogleFonts.manrope(
                            fontSize: 18, color: Colors.white)),
                    TextSpan(
                      text: " resume",  // open resume link
                      style: GoogleFonts.manrope(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.amber,
                        fontSize: 18,
                        color: const Color(0xffD3E97A),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                GestureDetector(
                  onTap: () => _launchURL("https://www.linkedin.com/in/harshkshirsagar"), // LinkedIn link
                  child: Image.asset("assets/Frame 3.png"),  
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => _launchURL("https://github.com/Hkshirsagar001"), // GitHub link
                  child: Image.asset("assets/Frame 4.png"), 
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Removed Expanded and used SingleChildScrollView for the form fields
            Text(
              "Name",
              style: GoogleFonts.manrope(
                  fontSize: 16, color: const Color(0xffC7C7C7)),
            ),
            const SizedBox(
              width: double.infinity,
              height: 51,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff484848),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Email",
              style: GoogleFonts.manrope(
                  fontSize: 16, color: const Color(0xffC7C7C7)),
            ),
            const SizedBox(
              width: double.infinity,
              height: 51,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff484848),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Subject",
              style: GoogleFonts.manrope(
                  fontSize: 16, color: const Color(0xffC7C7C7)),
            ),
            const SizedBox(
              width: double.infinity,
              height: 51,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff484848),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Message",
              style: GoogleFonts.manrope(
                  fontSize: 16, color: const Color(0xffC7C7C7)),
            ),
            const SizedBox(
              width: double.infinity,
              height: 156,
              child: TextField(
                maxLines: null, // Allows the text to wrap to new lines
                expands: true, // Fills the parent container
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xff484848),
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Image.asset("assets/button (2).png"),

            const SizedBox( 
              height: 150,
            ),
             Text('2025 \u00A9 Harsh Kshirsagar', 
                  style: GoogleFonts.manrope( 
                    color: Colors.white
                  ),)
          ],
        ),
      ),
    );
  }
} 
