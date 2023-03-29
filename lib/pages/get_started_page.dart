import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3/pages/main_menu.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/get-started.png"
              ) 
            )
          ),
        ),
        Container(
          height: 444,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0),
              ], 
            ),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 64,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Treat ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffFFFFFF),
                    fontSize: 24,
                  )),
                  Text("Patient ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff308CF8),
                    fontSize: 24,
                  )),
                  Text("Like A ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffFFFFFF),
                    fontSize: 24,
                  )),
                  Text("Queen",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff308CF8),
                    fontSize: 24,
                  )),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Center(
              child: Text("Explore the best our services with\nprofessional specialist doctor",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: const Color(0xffFFFFFF),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const MainMenuPage()));
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20)
                      
                  ),
                  child: Text("Get Started",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff0D2841),
                    fontSize: 18,
                  ),
                  ),
                ),
              ),
            )
          ],),
        )
      ]),
    );
  }
}