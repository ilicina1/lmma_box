import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/image_27.jpg'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 96, 50, 50),
            child: Center(
              child: TextWidget("Some Onboarding Text").getTextWidget("title"),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 30),
            child: TextWidget("Delivering quality home cooking to your door")
                .getTextWidget("details"),
          ),
        ],
      ),
    );
  }
}
