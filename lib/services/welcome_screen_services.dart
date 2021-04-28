import 'package:flutter/material.dart';
import 'package:lmma_box/interface/welcome_screen_interface.dart';

class WelcomeScreen implements WelcomeScreenInterface {
  @override
  void nextButtonClick(_pageController, screenScroll) {
    if (_pageController.hasClients) {
      _pageController.animateToPage(
        screenScroll.page,
        duration: (const Duration(milliseconds: 400)),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void previousButtonClick(_pageController, screenScroll) {
    if (_pageController.hasClients) {
      _pageController.animateToPage(
        screenScroll.page,
        duration: (const Duration(milliseconds: 400)),
        curve: Curves.easeInOut,
      );
    }
  }
}
