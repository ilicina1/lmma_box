import 'package:flutter/material.dart';

Widget googleIcon() {
  return Container(
    height: 23,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/images/googleLog.png'),
          ),
        ),
      ],
    ),
  );
}
