import 'package:flutter/material.dart';
import 'oyunekran.dart';

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
        home: buttonPage());
  }
}
