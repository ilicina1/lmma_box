import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';

Widget DividerOr(context) {
  return Padding(
    padding: MediaQuery.of(context).size.width < 380
        ? const EdgeInsets.fromLTRB(0, 0, 0, 0)
        : const EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Row(children: <Widget>[
      Expanded(
        child: Divider(),
      ),
      Text(
        "or",
        style: dividerText,
      ),
      Expanded(
        child: Divider(),
      ),
    ]),
  );
}
