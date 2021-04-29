import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class PotvrdaDart extends StatelessWidget {
  const PotvrdaDart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Confirm number",
      style: confirmHeader,
    );
  }
}
