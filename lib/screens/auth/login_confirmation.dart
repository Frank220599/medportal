import 'package:flutter/material.dart';
import 'package:medportal/screens/auth/widgets/code_form.dart';
import 'package:medportal/screens/auth/widgets/enter_code_description.dart';

class LoginConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EnterCodeDescription(),
            CodeForm(),
            Text(
              'Не получили код?',
              style: TextStyle(fontSize: 12),
            ),
            InkWell(
              onTap: () {},
              child: Text('Отправить еще раз'),
            ),
          ],
        ),
      ),
    );
  }
}
