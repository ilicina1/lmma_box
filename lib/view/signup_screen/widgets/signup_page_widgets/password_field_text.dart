import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';

Widget PasswordText(context) {
  return Text(
    "Password",
    style: MediaQuery.of(context).size.width < 380
        ? labelaStyleSmall
        : labelaStyle,
  );
}
