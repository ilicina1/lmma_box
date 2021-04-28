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

TextStyle skipButtonStyle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w500,
);

TextStyle headerText = TextStyle(
  color: Colors.grey[800],
  fontFamily: "Averta",
  fontWeight: FontWeight.bold,
  fontSize: 40,
);

TextStyle textLmmaBox = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
);

TextStyle getStartedStyle = TextStyle(
  fontSize: 15,
  color: Colors.grey[800],
  fontWeight: FontWeight.normal,
);

TextStyle twoButtonsStyle = TextStyle(
  fontSize: 16,
  color: Colors.grey[800],
  fontWeight: FontWeight.normal,
);
