import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:lmma_box/view/signup_screen/pages/signup_page.dart';

Widget skipButton(context) {
  return TextButton(
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpPage()),
      );
    },
    child: Text(
      "SKIP",
      style: skipButtonStyle,
    ),
  );
}
