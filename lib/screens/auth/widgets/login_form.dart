import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medportal/constants/palette.dart';
import 'package:medportal/constants/routes.dart';
import 'package:medportal/screens/auth/widgets/button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 168,
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 18),
      decoration: _Styles.mainBox,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: _Styles.code,
                margin: EdgeInsets.only(right: 12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 9,
                  ),
                  child: Text(
                    '+998',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: _Styles.code,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 9,
                        ),
                        child: Expanded(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          color: const Color(0xff27ae60),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1a000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/check.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Button(
            onTap: () {
              Navigator.of(context).pushNamed(ROUTES.LOGIN_CONFIRMATION);
            },
          )
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
