import 'package:flutter/material.dart';

Widget linkedinIcon() {
  return Container(
    height: 23,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/images/linkedinLog.png'),
          ),
        ),
      ],
    ),
  );
}
