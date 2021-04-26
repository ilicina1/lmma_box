import 'package:flutter/material.dart';

ButtonStyle nextButtonStyle() {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
      elevation: MaterialStateProperty.all<double>(0.0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        //side: BorderSide(color: Colors.red)
      )));
}
