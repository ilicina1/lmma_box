import 'package:flutter/material.dart';
import 'package:lmma_box/utils/dummyData/dummyData.dart';
import 'package:lmma_box/view/welcome_screen/pages/second_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/third_page.dart';

Widget previousButton(context, _pageController,screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.amber[400], width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.white,
        ),
        child: Text(
          'Previous',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[800],
          ),
        ),
        onPressed: () {
             screenScroll.changePage(screenScroll.page - 1);
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
