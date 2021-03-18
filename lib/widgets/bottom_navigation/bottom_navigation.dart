import 'package:flutter/material.dart';
import 'package:medportal/constants/palette.dart';

import 'custom_icons_icons.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.0),
          topRight: Radius.circular(18.0),
        ),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x12000000),
            offset: Offset(0, -4),
            blurRadius: 63,
          ),
        ],
      ),
      child: BottomNavigationBar(
        selectedItemColor: Palette.violet,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Icon(
                CustomIcons.monitor,
                size: 17,
              ),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Icon(
                CustomIcons.chat,
                size: 17,
              ),
            ),
            label: 'Чат',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Icon(
                CustomIcons.profile,
                size: 17,
              ),
            ),
            label: 'Аккаунт',
          ),
        ],
      ),
    );
  }
}
