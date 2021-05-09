import 'package:flutter/material.dart';

TextStyle createAccount = TextStyle(
    color: Color(0xff373737),
    fontWeight: FontWeight.w700,
    fontSize: 24,
    fontFamily: "Averta CY");

TextStyle createAccountSmall = TextStyle(
  color: Color(0xff373737),
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

TextStyle labelaStyle = TextStyle(
  color: Color(0xff373737),
  fontWeight: FontWeight.w700,
  height: 0.5,
  fontFamily: "Averta CY",
  fontSize: 14,
);

TextStyle labelaStyleSmall = TextStyle(
  color: Color(0xff373737),
  fontWeight: FontWeight.w700,
  height: 0.5,
  fontFamily: "Averta CY",
  fontSize: 10,
);

UnderlineInputBorder border = UnderlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFFE0E0E0),
    width: 1.0,
  ),
);

UnderlineInputBorder focused = UnderlineInputBorder(
  borderSide: const BorderSide(
    color: Color(0xFFFFDF36),
    width: 2.0,
  ),
);

TextStyle hintStyle = TextStyle(
  color: Color(0xFFBABABA),
);

TextStyle privacy = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontFamily: "Averta CY",
  color: Color(0xFF373737),
);

TextStyle dividerText = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontFamily: "Averta CY",
  color: Color(0xFF373737),
);

TextStyle privacyBlue = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontFamily: "Averta CY",
  color: Color(0xFF1CBD8D),
);

TextStyle signUpText = TextStyle(
  fontSize: 16,
  color: Colors.grey[800],
  fontWeight: FontWeight.normal,
);

TextStyle infoText = TextStyle(
  color: Color(0xFF373737),
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontFamily: "Averta CY",
);

TextStyle confirmHeader = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w700,
  fontFamily: "Averta CY",
  color: Color(0xFF373737),
);

TextStyle privacyConf = TextStyle(
  fontSize: 16,
  fontFamily: "Averta CY",
  fontWeight: FontWeight.w400,
  color: Color(0xFF373737),
);

TextStyle privacyBlueConf = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontFamily: "Averta CY",
  color: Color(0xFF1CBD8D),
);

Icon iconVisible = Icon(
  Icons.visibility,
  color: Color(0xFF8B8B8B),
);

Icon iconInvisible = Icon(
  Icons.visibility_off,
  color: Color(0xFF8B8B8B),
);

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
