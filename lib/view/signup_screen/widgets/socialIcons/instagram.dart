import 'package:flutter/material.dart';

Widget instagramIcon() {
  return Container(
    height: 23,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/images/instagramLog.png'),
          ),
        ),
      ],
    ),
  );
}
