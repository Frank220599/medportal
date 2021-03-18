import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medportal/constants/routes.dart';
import 'package:medportal/screens/auth/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: appRoutes,
    );
  }
}
