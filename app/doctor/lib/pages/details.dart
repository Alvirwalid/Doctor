import 'package:doctor/model/listofdoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);
  final doctorList = ListofDoctor.generetedList();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 8),
      height: h * 0.57,
      child: ListView.separated(
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
                    curve: Curves.slowMiddle,
                    flipAxis: FlipAxis.y,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: h * 0.286,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.2),
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: w * 0.25,
                                  height: h * 0.17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${doctorList[index].img}'),
                                          fit: BoxFit.fill)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${doctorList[index].name}',
                                      style: TextStyle(
                                          color: Color(0xff1C335A),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      '${doctorList[index].title}',
                                      style: TextStyle(
                                        color:
                                            Color(0xff1C335A).withOpacity(.7),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Colors.yellow,
                                        ),
                                        Text(
                                          '5 Star',
                                          style: TextStyle(
                                              color: Color(0xff1C335A),
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fee start ',
                                      style: TextStyle(
                                        color:
                                            Color(0xff1C335A).withOpacity(.7),
                                      ),
                                    ),
                                    Text(
                                      'from ',
                                      style: TextStyle(
                                        color:
                                            Color(0xff1C335A).withOpacity(.7),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${doctorList[index].fees}',
                                  style: TextStyle(
                                      color: Color(0xff1C335A),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 16),
                                        primary: Color(0xff0857DE)),
                                    onPressed: () {},
                                    child: Text('Connect'))
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          itemCount: doctorList.length),
    );
  }
}
