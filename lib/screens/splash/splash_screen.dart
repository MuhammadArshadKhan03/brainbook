import 'package:brainbook/core/theme/values/colors.dart';
import 'package:brainbook/core/theme/values/images.dart';
import 'package:brainbook/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: containerColor.withOpacity(0.15),
        body: SplashScreenView(
          navigateRoute:  WelcomeScreen(),
          duration: 6000,
          imageSize: 130,
          imageSrc: "assets/startpage/logo.png",
          text: "The Ultimate App for \n             Police",
          textType: TextType.NormalText,
          textStyle: GoogleFonts.poppins(
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 22.0
          ),
          backgroundColor: containerColor.withOpacity(0.35),
        )
      ),
    );
  }
}
