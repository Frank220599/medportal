import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: SvgPicture.asset(
            'assets/icons/verification.svg',
          ),
        ),
        Text(
          'Enter your mobile number we will send\nyou the OTP to verify later',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
