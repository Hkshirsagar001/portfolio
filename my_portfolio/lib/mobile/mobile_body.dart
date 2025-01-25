import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/mobile/m_aboutme.dart';
import 'package:my_portfolio/mobile/project_section.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
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
            child: Image.asset("assets/Frame 35.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 20,
              // ),
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
              SizedBox(height: 32,), 
        
              Row(  
                children: [   
                  Image.asset( 
                    "assets/button.png"
                  ) ,
                  SizedBox(width: 16,),
                  Image.asset( 
                    "assets/Frame 3.png"
                  ),
                  SizedBox(width: 16,), 
                   Image.asset( 
                    "assets/Frame 4.png"
                  )
                ],
              ), 
          SizedBox(height: 64,),
              //profile Image
              Center(
                child: Container( 
                  width: 343, 
                  height: 400,
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Image.asset( 
                    "assets/portfolioProfile.png"
                  ),
                ),
              ), 
              const SizedBox( 
                height: 64,
              ), 
              const Divider( 
              color: Colors.amber,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox( 
                height: 64,
              ),

              MProjectSection(), 
              MAboutme(), 
              
            ],
          ),
        ),
      ),
    );
  }
}
