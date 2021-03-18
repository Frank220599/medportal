import 'package:flutter/material.dart';

import './category.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            svgPath: 'assets/icons/nurse.svg',
            title: 'Врачи',
            subtitle: 'Поиск и бронь по врачам',
          ),
          Category(
            svgPath: 'assets/icons/pill.svg',
            title: 'Аптеки',
            subtitle: 'Бронирование лекарст в аптеке',
          ),
          Category(
            svgPath: 'assets/icons/microscope.svg',
            title: 'Клиники',
            subtitle: 'Поиск и запись на приём',
          ),
        ],
      ),
    );
  }
}
