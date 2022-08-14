import 'package:doctor/pages/categories.dart';
import 'package:doctor/pages/details.dart';
import 'package:flutter/material.dart';

class Doctor_Pannel extends StatefulWidget {
  @override
  State<Doctor_Pannel> createState() => _Doctor_PannelState();
}

class _Doctor_PannelState extends State<Doctor_Pannel> {
  //const Doctor_Pannel({Key? key}) : super(key: key);
  bool isVisit = false;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFAFAFF),
      appBar: AppBar(
        leadingWidth: 95,
        elevation: 0,
        backgroundColor: Color(0xffFAFAFF),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                padding: EdgeInsets.only(left: 9),
                alignment: Alignment.center,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                )),
          ),
        ),
        title: Text(
          'Doctors',
          style: TextStyle(color: Color(0xff1C335A)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.05,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: h * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff0857DE)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            primary: isVisit == true
                                ? Colors.white
                                : Color(0xff0857DE),
                            padding: EdgeInsets.symmetric(
                                horizontal: w * 0.14, vertical: h * 0.017)),
                        onPressed: () {
                          setState(() {
                            isVisit = true;
                          });
                        },
                        child: Text(
                          'Online',
                          style: TextStyle(
                              color: isVisit == true
                                  ? Color(0xff1C335A)
                                  : Colors.white),
                        )),
                    // SizedBox(
                    //   width: 0.02,
                    // ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            primary: isVisit == true
                                ? Color(0xff0857DE)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: w * 0.15, vertical: h * 0.017)),
                        onPressed: () {
                          setState(() {
                            isVisit = false;
                          });
                        },
                        child: Text('Visit',
                            style: TextStyle(
                                color: isVisit == false
                                    ? Color(0xff1C335A)
                                    : Colors.white))),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Text(
                'Let\'s find your Doctor',
                style: TextStyle(
                    color: Color(0xff1C335A),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Category(h: h),
              SizedBox(
                height: h * 0.02,
              ),
              Details()
            ],
          ),
        ),
      ),
    );
  }
}
