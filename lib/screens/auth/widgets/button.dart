import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:medportal/constants/palette.dart';
import 'package:medportal/constants/routes.dart';

class Button extends StatelessWidget {
  Function onTap;

  Button({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Palette.violet,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Отправить',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
