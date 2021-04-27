import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';

class TextWidget {
  String stringText = 'EMPTY STRING';
  String stylingCode = '';

  TextWidget(this.stringText);

  Text getTextWidget(String stylingCode) {
    return Text(
      stringText,
      style: FirstPageStyles(stylingCode).setTextStyle(),
    );
  }
}
