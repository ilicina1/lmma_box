import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/app_icon_signup.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/skip_button_signup.dart';

Widget appBarSignUp(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        appIconSignUp(),
        skipButtonSignUp(context),
      ],
    ),
  );
}
