import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 24),
        alignment: Alignment.topLeft,
        child: Text(
          'Welcome Back!',
          style: TextStyle(fontSize: 24),
        ));
  }
}
