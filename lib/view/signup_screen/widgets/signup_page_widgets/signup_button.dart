import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:lmma_box/view/signup_screen/pages/confirm_number.dart';

Widget signUpButton(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width < 380
          ? MediaQuery.of(context).size.height * 0.05
          : 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            primary: Color(0xFFFFDF36)),
        child: Text(
          'Sign Up',
          style: signUpText,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ConfirmNumberPage()),
        ),
      ),
    ),
  );
}
