import 'package:flutter/material.dart';

Text txt(String txt, double fs) {
  return Text(
    txt,
    style: TextStyle(
        color: Color(0xff1C335A), fontSize: fs, fontFamily: 'Schyler'),
  );
}
