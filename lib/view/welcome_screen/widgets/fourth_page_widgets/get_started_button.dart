import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';

Widget getStarted(context, _pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            primary: Color(0xFFFFDF36)),
        child: Text(
          'Get started',
          style: getStartedStyle,
        ),
        onPressed: () {},
      ),
    ),
  );
}
