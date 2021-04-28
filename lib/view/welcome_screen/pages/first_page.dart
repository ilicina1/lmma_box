import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/description_text.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: MediaQuery.of(context).size.width < 380
                ? MediaQuery.of(context).size.height * 0.4
                : 334,
            image: AssetImage(
              'assets/first_screen_image.png',
            ),
          ),
          Padding(
            padding: MediaQuery.of(context).size.width < 380
                ? const EdgeInsets.fromLTRB(50, 0, 50, 0)
                : const EdgeInsets.fromLTRB(50, 80, 50, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget("Welcome to LmaaBox").getTextWidget('title'),
                DescriptionText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
