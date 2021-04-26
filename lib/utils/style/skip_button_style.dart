import 'package:flutter/material.dart';

ButtonStyle skipButtonStyle() {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0.0),
  );
}
