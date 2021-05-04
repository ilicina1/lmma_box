import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

Widget dividerOr(context) {
  return Padding(
    padding: MediaQuery.of(context).size.width < 380
        ? const EdgeInsets.fromLTRB(0, 10, 0, 10)
        : const EdgeInsets.fromLTRB(0, 10, 0, 10),
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
