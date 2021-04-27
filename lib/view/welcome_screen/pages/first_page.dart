import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/app_bar_widget.dart';
import 'package:lmma_box/view/welcome_screen/widgets/next_page_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/set_text_first_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: welcomeAppBar(),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  width: 220,
                  height: 234,
                  child: Image(
                      image: AssetImage('assets/first_screen_image.png'))),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Column(
                    children: [
                      TextWidget('Welcome to LmmaaBox').getTextWidget(),
                      SizedBox(height: 20.0),
                      TextWidget('Delivering quality home cooking to your door')
                          .getTextWidget(),
                      SizedBox(height: 20.0),
                      nextPageButton(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}