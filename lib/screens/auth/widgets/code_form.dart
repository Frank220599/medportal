import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medportal/constants/palette.dart';
import 'package:medportal/constants/routes.dart';
import 'package:medportal/screens/auth/widgets/button.dart';

class CodeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 156,
      margin: EdgeInsets.only(top: 32, bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 18),
      decoration: _Styles.mainBox,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                ),
              ),
            ],
          ),
          Button(onTap: () {
            Navigator.of(context).pushNamed(ROUTES.HOME_SCREEN);
          })
        ],
      ),
    );
  }
}

class _Styles {
  static final mainBox = BoxDecoration(
    border: Border.all(
      color: Palette.borderGrey,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(12.0),
    color: const Color(0xffffffff),
    boxShadow: [
      BoxShadow(
        color: const Color(0x17000000),
        offset: Offset(0, 12),
        blurRadius: 29,
      ),
    ],
  );

  static final code = BoxDecoration(
    border: Border.all(
      color: Palette.borderGrey,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(8),
  );
}
