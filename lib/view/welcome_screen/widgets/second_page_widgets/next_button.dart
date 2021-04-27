import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget nextButton(context, _pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            primary: Colors.amber[400]),
        child: Text(
          'Next',
          style: TextStyle(fontSize: 20, color: Colors.grey[800]),
        ),
        onPressed: () {
          screenScroll.changePage(screenScroll.page + 1);
          if (_pageController.hasClients) {
            _pageController.animateToPage(
              screenScroll.page,
              duration: (const Duration(milliseconds: 400)),
              curve: Curves.easeInOut,
            );
          }
        },
      ),
    ),
  );
}
