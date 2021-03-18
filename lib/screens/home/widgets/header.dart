import 'package:flutter/material.dart';

import 'package:medportal/constants/palette.dart';
import 'package:medportal/widgets/bottom_navigation/touchable_opacity.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      padding: EdgeInsets.only(
        left: 25,
        right: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Palette.violet,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Avicenna',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TouchableOpacity(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'Ташкент',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 17),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 18,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
