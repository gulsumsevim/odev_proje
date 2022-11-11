import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odevflutter/giris.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const Odevproje());
}

class Odevproje extends StatelessWidget {
  const Odevproje({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TOPLAMA',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: AnimatedSplashScreen(
          splash: Text(
            'NUMBER GAME',
            style: GoogleFonts.rockSalt(fontSize: 35),
          ),
          duration: 5,
          backgroundColor: Colors.amber,
          nextScreen: HomePage()),
    );
  }
}
