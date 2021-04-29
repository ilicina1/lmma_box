import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

Widget dividerOr() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
    child: Row(children: <Widget>[
      Expanded(
        child: Divider(),
      ),
      Text(
        "or",
        style: privacy,
      ),
      Expanded(
        child: Divider(),
      ),
    ]),
  );
}
