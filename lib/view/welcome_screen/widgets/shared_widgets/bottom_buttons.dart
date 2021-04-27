import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/welcome_screen/widgets/fourth_page_widgets/get_started_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/next_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/previous_button.dart';
import 'package:provider/provider.dart';

class BottomButtons extends StatelessWidget {
  final PageController _pageController;
  var screenScroll;
  BottomButtons(this._pageController, this.screenScroll);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Provider.of<ScreenScrollProvider>(context).page == 3
          ? Column(
              children: [
                previousButton(context, _pageController, screenScroll),
                getStarted(context, _pageController, screenScroll),
              ],
            )
          : Provider.of<ScreenScrollProvider>(context).page == 0
              ? Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    nextButton(context, _pageController, screenScroll),
                  ],
                )
              : Column(
                  children: [
                    previousButton(context, _pageController, screenScroll),
                    nextButton(context, _pageController, screenScroll),
                  ],
                ),
    );
  }
}
