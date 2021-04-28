import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:lmma_box/viewModel/welcome_screen.dart';

Widget previousButton(context, _pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width < 380
          ? MediaQuery.of(context).size.height * 0.05
          : 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFFFDF36), width: 2),
            borderRadius: BorderRadius.circular(16),
          ),
          primary: Colors.white,
        ),
        child: Text(
          'Previous',
          style: twoButtonsStyle,
        ),
        onPressed: () {
          screenScroll.changePage(screenScroll.page - 1);
          previousButtonClickModel(_pageController, screenScroll);
        },
      ),
    ),
  );
}
