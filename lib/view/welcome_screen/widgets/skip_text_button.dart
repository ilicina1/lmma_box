import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/text_color.dart';

Widget skipTextButtonWidget() {
  return RichText(
    text: TextSpan(
        text: 'SKIP',
        style: welcomeScreenTextStyle,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            print('Terms of Service"');
          }),
  );
}
