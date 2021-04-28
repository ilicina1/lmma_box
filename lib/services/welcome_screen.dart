import 'package:flutter/material.dart';

void nextButtonClick(_pageController, screenScroll) {
  if (_pageController.hasClients) {
    _pageController.animateToPage(
      screenScroll.page,
      duration: (const Duration(milliseconds: 400)),
      curve: Curves.easeInOut,
    );
  }
}

void previousButtonClick(_pageController, screenScroll) {
  if (_pageController.hasClients) {
    _pageController.animateToPage(
      screenScroll.page,
      duration: (const Duration(milliseconds: 400)),
      curve: Curves.easeInOut,
    );
  }
}
