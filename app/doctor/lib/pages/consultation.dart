import 'package:doctor/model/consultation.dart';
import 'package:flutter/material.dart';

class Consultation extends StatelessWidget {
  Consultation({Key? key}) : super(key: key);

  final itemList = ConsultationModel.generatedConsul();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffFAFAFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 7),
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
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: w,
        height: h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.1),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose',
                    style: TextStyle(
                        color: Color(0xff1C335A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Consultation',
                    style: TextStyle(
                        color: Color(0xff1C335A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Format',
                    style: TextStyle(
                        color: Color(0xff1C335A),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.1),
            Container(
              padding: EdgeInsets.all(10),
              height: h * 0.5,
              color: Colors.transparent,
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      height: 120,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.1),
                                blurRadius: 2,
                                offset: Offset(.01, .01))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: itemList[index].color),
                              child: Icon(
                                itemList[index].icon,
                                color: Colors.white,
                                size: 32,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${itemList[index].txt1}',
                                style: TextStyle(
                                    color: Color(0xff1C335A),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '${itemList[index].txt2}',
                                style: TextStyle(
                                    color: Color(0xff1C335A),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 30,
                    );
                  },
                  itemCount: itemList.length),
            )
          ],
        ),
      ),
    );
  }
}
