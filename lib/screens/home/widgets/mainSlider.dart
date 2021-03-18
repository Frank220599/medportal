import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      margin: EdgeInsets.only(bottom: 48),
      child: ListView(
        padding: EdgeInsets.only(left: 17, right: 9),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/images/slider.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/images/slider.png',
            ),
          ),
        ],
      ),
    );
  }
}
