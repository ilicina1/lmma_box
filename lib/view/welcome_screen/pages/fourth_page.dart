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
          Image(
            height: MediaQuery.of(context).size.width < 380
                ? MediaQuery.of(context).size.height * 0.4
                : 236,
            image: AssetImage('assets/images/image 27.png'),
          ),
          Padding(
            padding: MediaQuery.of(context).size.width < 380
                ? const EdgeInsets.fromLTRB(50, 0, 50, 0)
                : const EdgeInsets.fromLTRB(50, 80, 50, 0),
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
