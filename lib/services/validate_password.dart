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

bool confirmPassword(value1, value2, _scaffoldKey) {
  print("$value1 and $value2");
  if (value1 == value2)
    return null;
  else {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text("Passwords not matching"),
      ),
    );
  }
  return false;
}
