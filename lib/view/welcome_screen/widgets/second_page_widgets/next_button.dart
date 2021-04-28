import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:lmma_box/viewModel/welcome_screen.dart';

Widget nextButton(context, _pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            primary: Color(0xFFFFDF36)),
        child: Text(
          'Next',
          style: twoButtonsStyle,
        ),
        onPressed: () {
          screenScroll.changePage(screenScroll.page + 1);
          nextButtonClickModel(_pageController, screenScroll);
        },
      ),
    ),
  );
}
