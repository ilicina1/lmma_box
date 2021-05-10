import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/privacy_policy_screen/pages/privacy_policy_layout.dart';

Widget PolicyAndTerms(context) {
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PrivacyPolicyLinkAndTermsOfService("privacy")),
                    );
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PrivacyPolicyLinkAndTermsOfService("terms")),
                        );
                      })
              ],
            )
          ],
        ),
      ),
    ),
  );
}
