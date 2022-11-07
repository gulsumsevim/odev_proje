import 'package:flutter/material.dart';
import 'renk.dart';

class denemepAGE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var secCounter;
    var gameHistory;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
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
                            Text(
                              'TIMER : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              secCounter.toString(),
                              style: TextStyle(color: Colors.white),
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
                            Text(
                              'SCORE : ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              gameHistory[''].toString(),
                              style: TextStyle(color: Colors.white),
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
