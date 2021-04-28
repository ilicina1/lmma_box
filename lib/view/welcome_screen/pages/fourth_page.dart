import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/description_text.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset('assets/image_27.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget("Some Onboarding text").getTextWidget('title'),
                DescriptionText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
