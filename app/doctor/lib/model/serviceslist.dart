import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesModel {
  String? txt1;
  String? txt2;
  IconData? icon;
  String? txt3;
  Color? color;

  ServicesModel({this.txt1, this.txt2, this.txt3, this.icon, this.color});

  static List<ServicesModel> servicesList() {
    return [
      ServicesModel(
          txt1: 'Online',
          txt2: 'Consultation',
          icon: Icons.mobile_friendly,
          color: Color(0xffAAE08F),
          txt3: 'Find Doctor'),
      ServicesModel(
          txt1: 'Visit',
          txt2: 'a Doctor',
          icon: Icons.power,
          color: Color(0xff0857DE),
          txt3: 'Book Appoinment'),
      ServicesModel(
          txt1: 'Visit',
          txt2: 'a Doctor',
          icon: Icons.power,
          color: Color(0xff0857DE),
          txt3: 'Book Appoinment'),
    ];
  }
}
