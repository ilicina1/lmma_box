import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/first_page_text_styles.dart';

class TextWidget {
  String stringText = 'EMPTY STRING';

  TextWidget(this.stringText);

  Text getTextWidget() {
    return Text(
      stringText,
      style: FirstPageStyles(stringText).setTextStyle(),
    );
  }
}
