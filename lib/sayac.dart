import 'dart:async';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:odevflutter/oyunekran.dart';

import 'sayacayar.dart';
import 'package:flutter/material.dart';

class SayacEkran extends StatefulWidget {
  // This widget is the root of your application.
  @override
  // ignore: library_private_types_in_public_api
  _SayacEkranState createState() => _SayacEkranState();
}

class _SayacEkranState extends State<SayacEkran>
    with SingleTickerProviderStateMixin {
  Color _renk = Colors.green;
  int _startCounter = 5;
  late Timer _timer;
  Random random = Random();

  @override
  void initState() {
    super.initState();
    runCounter();
  }

  void runCounter() {
    _timer = Timer.periodic(const Duration(seconds: 1), loadTimer);
  }

  loadTimer(Timer timer) {
    setState(() {
      loadGameWhenReady(timer);
      continueLoader();
    });
  }

  void continueLoader() {
    _renk = Common.getRandomColor();
    _startCounter--;
  }

  void loadGameWhenReady(Timer timer) {
    if (_startCounter == 0) {
      timer.cancel();
      Navigator.of(context).pushAndRemoveUntil<void>(
        MaterialPageRoute<void>(
            builder: (BuildContext context) => const buttonPage()),
        ModalRoute.withName('/'),
      );
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.amber,
            alignment: Alignment(0.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _startCounter.toString(),
                  style: TextStyle(
                      fontSize: 50, color: _renk, fontWeight: FontWeight.w600),
                ),
                Text(
                  'HAZIR OL!',
                  style: GoogleFonts.gloriaHallelujah(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
