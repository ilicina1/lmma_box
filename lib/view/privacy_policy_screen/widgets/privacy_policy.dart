import 'package:flutter/material.dart';

Widget privacyPolicy() {
  return new Container(
    color: Colors.white,
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
          child: Center(
            child: Image.asset(
              'assets/lmmaa_box.png',
            ),
          ),
        ),
        new Padding(
          padding: const EdgeInsets.all(12.0),
          child: new Text(
            "Privacy policy",
            style: new TextStyle(
                fontSize: 28.0,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
        ),
        new SingleChildScrollView(
          child: new Text(
            "Description that is too long in text format(Here Data is coming from API)",
            style: new TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    ),
  );
}
