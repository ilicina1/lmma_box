import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/next_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/previous_button.dart';

Widget buttons() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
    child: Container(
      width: double.infinity,
      height: 40,
      child: Column(
        children: [
          previousButton(),
          nextButton(),
        ],
      ),
    ),
  );
}
