import 'dart:ui';

import 'package:doctor/chooseformat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.bottom,
    //   SystemUiOverlay.top,
    // ]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFF),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Color(0xffFAFAFF),
        centerTitle: true,
        leading: InkWell(
          onTap: null,
          child: Padding(
              padding: const EdgeInsets.all(17),
              child: Image.asset(
                './images/ghfdhgjah.png',
                // width: 30,
                // height: 20,
                // fit: BoxFit.contain,
                scale: 0.1,
              )),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nancy Lawrance',
              style: TextStyle(color: Color(0xff1C335A), fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 18,
                  color: Color(0xff0857DE),
                ),
                Text('Los Angeles,US',
                    style: TextStyle(
                        color: Color(0xff1C335A).withOpacity(0.7),
                        fontSize: 12))
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 30,
              //width: 90,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.amber,
                  border: Border.all(
                      width: 2, color: Color(0xff9BA5B5).withOpacity(.7))),
              child: Container(
                width: 40,
                // height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(
                          './images/avater.jpeg',
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Choose_format(),
    );
  }
}
