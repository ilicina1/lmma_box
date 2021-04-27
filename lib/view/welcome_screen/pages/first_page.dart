import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                width: 315, //315
                height: 334, //334
                child:
                    Image(image: AssetImage('assets/first_screen_image.png'))),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget('Welcome to LmmaaBox').getTextWidget('title'),
                    SizedBox(height: 20.0),
                    TextWidget('Delivering quality home cooking\nto your door')
                        .getTextWidget('details'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
