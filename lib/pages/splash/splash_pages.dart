import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../onboarding/onboarding_pages.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Onboarding()),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D272F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/logo 2121-01 1.png"),
              width: 102,
            ),
            Text(
              "Catchy",
              style: GoogleFonts.average(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
