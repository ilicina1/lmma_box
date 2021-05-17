import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/icon_back_replace.dart';

Widget AppBarWithIconBackReplace(context, title) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 40,
          child: IconBackReplace(),
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
