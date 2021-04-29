import 'package:flutter/material.dart';

class PotvrdaDart extends StatelessWidget {
  const PotvrdaDart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Confirm number",
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        fontFamily: "Averta",
        color: Colors.black,
      ),
    );
  }
}
