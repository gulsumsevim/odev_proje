import 'package:flutter/material.dart';
import 'package:odevflutter/veri.dart';

Widget numberBlock(
    {required Color borderColor,
    required Color bgColor,
    required int index,
    required int value,
    required BlockDataStream blockDataStream}) {
  bool isSelected = false;
  return Material(
    child: InkWell(
      onTap: () {
        isSelected = isSelected ? false : true;
        blockDataStream.setCount(index: index, value: value);
      }, // handle your onTap here
      child: Container(
        width: 120,
        height: 120,
        alignment: Alignment(0.0, 0.0),
        decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          value.toString(),
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
