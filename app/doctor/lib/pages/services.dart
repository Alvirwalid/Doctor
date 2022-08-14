import 'package:doctor/model/serviceslist.dart';
import 'package:doctor/pages/consultation.dart';
import 'package:doctor/pages/doctors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Services extends StatelessWidget {
  Services({
    Key? key,
  }) : super(key: key);
  final serviceList = ServicesModel.servicesList();
  var currentindex;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.7,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                horizontalOffset: 30,
                verticalOffset: 300.0,
                child: FlipAnimation(
                    duration: Duration(milliseconds: 3000),
                    curve: Curves.bounceInOut,
                    flipAxis: FlipAxis.y,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        height: 250,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  offset: Offset(0.1, 0.1),
                                  blurRadius: 6,
                                  blurStyle: BlurStyle.solid)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${serviceList[index].txt1}',
                              style: TextStyle(
                                  color: Color(0xff1C335A), fontSize: 20),
                            ),
                            Text('${serviceList[index].txt2},',
                                style: TextStyle(
                                    color: Color(0xff1C335A), fontSize: 18)),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: serviceList[index].color,
                              child: Icon(
                                serviceList[index].icon,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Text(
                              'streaming from \$50',
                              style: TextStyle(color: serviceList[index].color),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    fixedSize: Size(w * 0.6, h * 0.055),
                                    primary: serviceList[index].color),
                                onPressed: () {
                                  currentindex = index;
                                  if (currentindex == 0) {
                                    Route route =
                                        MaterialPageRoute(builder: (_) {
                                      return Consultation();
                                    });
                                    Navigator.of(context).push(route);
                                  }
                                  ;
                                  if (currentindex == 1) {
                                    Route route =
                                        MaterialPageRoute(builder: (_) {
                                      return Doctor_Pannel();
                                    });
                                    Navigator.of(context).push(route);
                                  }
                                  ;
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('${serviceList[index].txt3}'),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ))
                          ],
                        ))),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 30,
            );
          },
          itemCount: serviceList.length),
    );
  }
}
