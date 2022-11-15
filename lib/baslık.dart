import 'package:flutter/material.dart';
import 'package:odevflutter/renk.dart';

Row headerInfo(int secCounter, Map<String, int> gameHistory) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
          padding: const EdgeInsets.only(left: 15, right: 10),
          width: 100,
          color: blackLowOpacity,
          child: Row(
            children: <Widget>[
              // ignore: prefer_const_constructors
              Text(
                'TIMER : ',
                style: const TextStyle(
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
              // ignore: prefer_const_constructors
              Text(
                'SCORE : ',
                style: const TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                gameHistory['score'].toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ))
    ],
  );
}
