import 'package:doctor/model/categoriesmodel.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({
    Key? key,
    required this.h,
  }) : super(key: key);

  final double h;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final categoriesList = CategoryOfservices.categoryList();
  var x = 0;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      height: widget.h * 0.07,
      //color: Colors.red,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  x = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                // height: h * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: x == index ? Color(0xffAAE08F) : Colors.white),
                child: Text('${categoriesList[index].name}'),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: categoriesList.length),
    );
  }
}
