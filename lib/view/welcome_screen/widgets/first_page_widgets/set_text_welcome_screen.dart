import 'package:flutter/material.dart';
import 'package:lmma_box/utils/dummyData/dummyData.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';

class TextWidget {
  TextWidget(stringTextNew) {
    stringText = stringTextNew;
  }

  Text getTextWidget(String stylingCode) {
    return Text(
      stringText,
      style: FirstPageStyles(stylingCode).setTextStyle(),
    );
  }
}
