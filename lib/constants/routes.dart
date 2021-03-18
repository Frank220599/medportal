import 'package:flutter/material.dart';
import 'package:medportal/screens/auth/login_confirmation.dart';
import 'package:medportal/screens/doctor_info/doctor_info.dart';
import 'package:medportal/screens/home/home_screen.dart';
import 'package:medportal/screens/auth/login_screen.dart';

class ROUTES {
  static const LOGIN_SCREEN = 'LOGIN_SCREEN';
  static const LOGIN_CONFIRMATION = 'LOGIN_CONFIRMATION';
  static const HOME_SCREEN = 'HOME_SCREEN';
  static const DOCTOR_INFO = 'DOCTOR_INFO';
}

final Map<String, WidgetBuilder> appRoutes = {
  ROUTES.LOGIN_SCREEN: (_) => LoginScreen(),
  ROUTES.LOGIN_CONFIRMATION: (_) => LoginConfirmation(),
  ROUTES.HOME_SCREEN: (_) => HomeScreen(),
  ROUTES.DOCTOR_INFO: (_) => DoctorInfo(),
};
