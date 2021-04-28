import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:lmma_box/view/welcome_screen/pages/page_scroller.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashApp extends StatefulWidget {
  @override
  _SplashAppState createState() => new _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new PageScroller(),
        title: new Text(
          'Welcome to Lmmaa box',
          style: textLmmaBox,
        ),
        image: new Image.asset('assets/images/logo1.png'),
        backgroundColor: Colors.white,
        // styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Color(0xFFFFDF36));
  }
}
