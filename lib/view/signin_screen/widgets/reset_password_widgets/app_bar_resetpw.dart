import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/icon_back.dart';

Widget AppBarResetpw(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconBack(),
        Text(
          "Reset password",
          style: headerNewText,
        ),
        Text(""),
      ],
    ),
  );
}
