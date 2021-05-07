import 'package:flutter/material.dart';

bool validatePassword(value, _scaffoldKey) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = new RegExp(pattern);
  if (regExp.hasMatch(value) == true)
    return null;
  else {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
            "Password should be at least 8 characters long and should include at least one lower and upper case characters, one number and one symbol"),
      ),
    );
  }
  return false;
}
