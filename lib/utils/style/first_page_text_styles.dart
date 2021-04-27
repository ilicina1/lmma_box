import 'package:flutter/material.dart';

class FirstPageStyles {
  double fontSize = 12, paragraphSpacing = 1, letterSpacing = 1, opacity = 1;
  bool isBold = false;
  FontWeight fontWeight = FontWeight.w400;

  FirstPageStyles(String stringTitle) {
    setVariables(stringTitle);
  }

  TextStyle setTextStyle() {
    return TextStyle(
        fontWeight: isBold == true ? FontWeight.bold : fontWeight,
        color: Color(0xFF373737).withOpacity(opacity),
        fontSize: fontSize,
        letterSpacing: letterSpacing);
  }

  void setVariables(String stringTitle) {
    switch (stringTitle) {
      case 'Welcome to LmmaaBox':
        fontWeight = FontWeight.w700;
        isBold = true;
        fontSize = 34;
        letterSpacing = -0.8;
        break;
      case 'SKIP':
        fontWeight = FontWeight.w600;
        break;
      case 'Delivering quality home cooking to your door':
        opacity = 0.7;
        fontSize = 16;
    }
  }
}
