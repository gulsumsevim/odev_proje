// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:odevflutter/renk.dart';

class buttonPage extends StatefulWidget {
  const buttonPage({super.key});

  @override
  State<buttonPage> createState() => _HomePage();
}

class _HomePage extends State<buttonPage> {
  String randomNumber = 'X';

  var colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.pink,
    Colors.brown,
    Colors.amber,
    Colors.green,
  ];
  var currentColor = Colors.black;
  var boxColor = Colors.black;

  get secCounter => null;

  get gameHistory => null;

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    var button = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
      boxColor = colors[button];
    });
  }

  @override
  Widget build(BuildContext context) {
    mainAxisAlignment:
    MainAxisAlignment.center;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            height: 600,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "50",
                  style: TextStyle(fontSize: 70),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      width: 100,
                      color: Colors.lightGreen,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'TIMER : ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          /*Text(
                            secCounter.toString(),
                            style: TextStyle(color: Colors.white),
                          ),*/
                        ],
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: boxColor,
                            padding: const EdgeInsets.fromLTRB(
                              60.0,
                              40.0,
                              60.0,
                              40.0,
                            ),
                          ),
                          onPressed: setRandomColor,
                          child: const Text(''),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: currentColor,
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: setRandomColor,
                            child: const Text(''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            child: const Text(''),
                            onPressed: () {
                              setState(() {
                                randomNumber =
                                    (Random().nextInt(5) + 10).toString();
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: () {},
                            child: const Text(''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 40.0, 60.0, 40.0),
                            ),
                            onPressed: () {},
                            child: const Text(''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            padding: const EdgeInsets.fromLTRB(
                                60.0, 40.0, 60.0, 40.0),
                          ),
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                    ],
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
