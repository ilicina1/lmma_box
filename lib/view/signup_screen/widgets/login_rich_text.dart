import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

Widget loginRichText(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width < 380
                ? MediaQuery.of(context).size.height * 0.08
                : MediaQuery.of(context).size.height * 0.15),
        child: Center(
          child: Text.rich(
            TextSpan(
              text: 'Already have an account? ',
              style: privacy,
              children: <TextSpan>[
                TextSpan(
                  text: 'Log In',
                  style: privacyBlue,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // code to open / launch terms of service link here
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
