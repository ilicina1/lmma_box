import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/next_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/previous_button.dart';
import 'package:provider/provider.dart';

class BottomButtons extends StatelessWidget {
  final PageController _pageController;
  BottomButtons(this._pageController);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Provider.of<ScreenScrollProvider>(context).page == 3
          ? Container(
              width: 275,
              height: 45,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Add your onPressed code here!
                },
                label: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16, color: Colors.brown),
                ),
                backgroundColor: Colors.yellow,
                elevation: 0,
              ),
            )
          : Column(
              children: [
                previousButton(context, _pageController),
                nextButton(context, _pageController),
              ],
            ),
    );
  }
}
