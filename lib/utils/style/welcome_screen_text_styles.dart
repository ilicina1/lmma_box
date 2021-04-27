import 'package:flutter/material.dart';

class FirstPageStyles {
  double fontSize = 12, paragraphSpacing = 1, letterSpacing = 1, opacity = 1;
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
        letterSpacing: letterSpacing);
  }

  void setVariables(String stylingCode) {
    switch (stylingCode) {
      case 'title':
        fontWeight = FontWeight.w800;
        isBold = true;
        fontSize = 34;
        letterSpacing = -0.8;
        break;
      case 'SKIP':
        fontWeight = FontWeight.w600;
        break;
      case 'details':
        opacity = 0.7;
        fontSize = 16;
    }
  }
}
