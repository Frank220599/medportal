import 'package:flutter/material.dart';
import 'package:medportal/screens/home/widgets/header.dart';
import 'package:medportal/widgets/bottom_navigation/bottom_navigation.dart';

import './widgets/doctorsSlider.dart';
import './widgets/mainSlider.dart';
import './widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Header(),
                Positioned(
                  top: 105,
                  width: MediaQuery.of(context).size.width,
                  child: Categories(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 140),
              child: MainSlider(),
            ),
            DoctorsSlider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
