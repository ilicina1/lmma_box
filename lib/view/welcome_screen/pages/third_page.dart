import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/third_page_widgets/headerTextThird.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          HeaderTextThird(),
        ],
      ),
    );
  }
}
