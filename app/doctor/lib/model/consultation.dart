import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultationModel {
  String? txt1;
  String? txt2;
  IconData? icon;
  Color? color;

  ConsultationModel({this.txt1, this.txt2, this.icon, this.color});

  static List<ConsultationModel> generatedConsul() {
    return [
      ConsultationModel(
          txt1: 'Start',
          txt2: 'Conversation',
          icon: Icons.messenger_outline_outlined,
          color: Color(0xffAAE08F)),
      ConsultationModel(
          txt1: 'Join',
          txt2: 'live video call',
          icon: Icons.videocam_outlined,
          color: Color(0xff0857DE)),
    ];
  }
}
