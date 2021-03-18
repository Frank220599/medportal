import 'package:flutter/material.dart';
import 'package:medportal/screens/auth/widgets/description.dart';
import 'package:medportal/screens/auth/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Description(),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
