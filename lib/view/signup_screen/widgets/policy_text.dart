import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

Widget policyAndTerms() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 20),
    child: Center(
      child: Text.rich(
        TextSpan(
          text: 'By creating an account you agree to the ',
          style: privacy,
          children: <TextSpan>[
            TextSpan(
                text: 'privacy policy',
                style: privacyBlue,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // code to open / launch terms of service link here
                  }),
            TextSpan(
              text: ' and to the ',
              style: privacy,
              children: <TextSpan>[
                TextSpan(
                    text: 'terms of use',
                    style: privacyBlue,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // code to open / launch privacy policy link here
                      })
              ],
            )
          ],
        ),
      ),
    ),
  );
}
