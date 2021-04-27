import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/app_bar_skip.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/app_icon.dart';

Widget appBarWidget() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        appIcon(),
        skipButton(),
      ],
    ),
  );
}
