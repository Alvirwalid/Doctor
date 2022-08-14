import 'package:doctor/model/text.dart';
import 'package:doctor/pages/services.dart';
import 'package:flutter/material.dart';

class Choose_format extends StatelessWidget {
  const Choose_format({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: w,
      height: h,
      child: Column(
        children: [
          SizedBox(
            height: h * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt('Choose format', 22),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.04, vertical: h * 0.01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: txt('Skip', 16),
              ),
            ],
          ),
          Services()
        ],
      ),
    );
  }
}
