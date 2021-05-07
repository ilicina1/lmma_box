import 'package:flutter/material.dart';

class FirstPageStyles {
  double fontSize = 12, height = 1.0, letterSpacing = 1, opacity = 1;
  bool isBold = false;
  FontWeight fontWeight = FontWeight.w400;

  FirstPageStyles(String stylingCode) {
    setVariables(stylingCode);
  }

  TextStyle setTextStyle() {
    return TextStyle(
        fontWeight: isBold == true ? FontWeight.bold : fontWeight,
        color: Color(0xFF373737).withOpacity(opacity),
        fontSize: fontSize,
        height: height,
        letterSpacing: letterSpacing);
  }

  void setVariables(String stylingCode) {
    switch (stylingCode) {
      case 'title':
        fontWeight = FontWeight.w800;
        isBold = true;
        fontSize = 34;
        height = fontSize / fontSize;
        letterSpacing = -0.8;
        break;
      case 'SKIP':
        fontWeight = FontWeight.w600;
        break;
      case 'details':
        opacity = 0.7;
        fontSize = 16;
        height = 20 / fontSize;
    }
  }
}

TextStyle headerNewText = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w700,
  fontFamily: "Averta",
  color: Color(0xFF373737),
);

TextStyle skipButtonStyle = TextStyle(
  color: Color(0xff373737),
  fontFamily: "Averta CY",
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

TextStyle textLmmaBox = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 34.0,
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
);

TextStyle getStartedStyle = TextStyle(
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  color: Color(0xFF68572D),
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

TextStyle twoButtonsStyle = TextStyle(
  fontFamily: "Averta CY",
  fontStyle: FontStyle.normal,
  fontSize: 16,
  color: Color(0xFF68572D),
  fontWeight: FontWeight.w500,
);
