import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medportal/screens/home/widgets/doctor.dart';

class DoctorsSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      margin: EdgeInsets.only(bottom: 48),
      child: ListView(
        clipBehavior: Clip.none,
        padding: EdgeInsets.only(left: 17),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(right: 21.4),
            child: Doctor(),
          ),
          Container(
            margin: EdgeInsets.only(right: 21.4),
            child: Doctor(),
          ),
          Container(
            margin: EdgeInsets.only(right: 21.4),
            child: Doctor(),
          ),
          Container(
            margin: EdgeInsets.only(right: 21.4),
            child: Doctor(),
          ),
        ],
      ),
    );
  }
}
