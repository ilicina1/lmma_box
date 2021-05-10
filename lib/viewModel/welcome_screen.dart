import 'package:lmma_box/services/welcome_screen_services.dart';

NextButtonClickModel(_pageController, screenScroll) {
  WelcomeScreen().nextButtonClick(_pageController, screenScroll);
}

PreviousButtonClickModel(_pageController, screenScroll) {
  WelcomeScreen().previousButtonClick(_pageController, screenScroll);
}
