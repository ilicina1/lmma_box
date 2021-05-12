import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signup_screen/pages/signup_page.dart';

Widget SkipButton(context) {
  return TextButton(
    onPressed: () async {
      await FlutterSession().set("seen", true);
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
