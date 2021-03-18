import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medportal/constants/palette.dart';

const HEIGHT = 75.0;
const WIDTH = 75.0;

class Category extends StatelessWidget {
  String svgPath;
  String title;
  String subtitle;

  Category({
    @required this.svgPath,
    @required this.title,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Container(
            height: HEIGHT,
            width: WIDTH,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(70.0),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 11),
                  blurRadius: 35,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => print('xaxa'),
                borderRadius: BorderRadius.circular(70),
                child: SvgPicture.asset(svgPath, fit: BoxFit.scaleDown),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              title,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10, color: Palette.grey),
          ),
        ],
      ),
    );
  }
}
