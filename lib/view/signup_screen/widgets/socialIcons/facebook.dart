import 'package:flutter/material.dart';

Widget facebookIcon() {
  return Container(
    height: 23,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/images/facebookLog.png'),
          ),
        ),
      ],
    ),
  );
}
