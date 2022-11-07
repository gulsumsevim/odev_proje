import 'package:flutter/material.dart';

import 'renk.dart';

Container buildTargetBlock({required String title, required int targetValue}) {
  return Container(
    width: 280,
    height: 100,
    alignment: Alignment(0.0, 0.0),
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          targetValue.toString(),
          style: TextStyle(
              color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    ),
    decoration: BoxDecoration(
        color: blackLowOpacity, borderRadius: new BorderRadius.circular(10)),
  );
}
