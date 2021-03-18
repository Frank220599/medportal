import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medportal/constants/routes.dart';
import 'package:medportal/screens/doctor_info/doctor_info.dart';
import 'package:medportal/widgets/bottom_navigation/touchable_opacity.dart';

class Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: () {
        Get.toNamed(ROUTES.DOCTOR_INFO);
        print('xaxa');
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: 124.6,
            height: 134.3,
            padding: EdgeInsets.only(top: 45, left: 11.8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 9),
                  blurRadius: 28,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Алина Ким',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Text(
                  'Акушер-гинеколог',
                  style: TextStyle(fontSize: 9),
                ),
                Text(
                  'MDS',
                  style: TextStyle(fontSize: 9),
                ),
              ],
            ),
          ),
          Positioned(
            top: -25,
            child: Container(
              width: 58,
              height: 58,
              child: Image.asset('assets/images/44.png'),
            ),
          ),
        ],
      ),
    );
  }
}
