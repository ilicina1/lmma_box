import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/pages/login_screen.dart';

Widget skipButtonSignUp(context) {
  return TextButton(
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    },
    child: Text(
      "SKIP",
      style: skipButtonStyle,
    ),
  );
}
