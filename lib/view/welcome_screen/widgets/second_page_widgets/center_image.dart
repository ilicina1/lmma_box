import 'package:flutter/material.dart';

Widget centerImage(context) {
  return Padding(
    padding: MediaQuery.of(context).size.width < 380
        ? const EdgeInsets.only(bottom: 0.0)
        : const EdgeInsets.only(bottom: 80.0),
    child: Image(
      height: MediaQuery.of(context).size.width < 380
          ? MediaQuery.of(context).size.height * 0.4
          : 236,
      image: AssetImage('assets/images/image 27.png'),
    ),
  );
}
