import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/icon_back.dart';

Widget AppBarWithIconBack(context, title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 40,
          child: IconBack(),
        ),
        Container(
          // width: 32,
          child: Text(
            title,
            style: headerNewText,
          ),
        ),
        Container(
          width: 40,
          child: Text(
            "",
            // style: headerNewText,
          ),
        ),
        // Text(" "),
      ],
    ),
  );
}
