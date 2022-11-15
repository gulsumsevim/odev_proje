import 'package:flutter/material.dart';
import 'renk.dart';

class denemepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var secCounter;
    // ignore: prefer_typing_uninitialized_variables
    var gameHistory;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        width: 100,
                        color: blackLowOpacity,
                        child: Row(
                          children: <Widget>[
                            const Text(
                              'TIMER : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              secCounter.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        // width: 200,
                        color: blackLowOpacity,
                        child: Row(
                          children: <Widget>[
                            const Text(
                              'SCORE : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              gameHistory[''].toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
