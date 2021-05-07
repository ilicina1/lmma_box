import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/viewModel/welcome_screen.dart';

Widget nextButton(context, _pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width < 380
          ? MediaQuery.of(context).size.height * 0.05
          : 45,
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
