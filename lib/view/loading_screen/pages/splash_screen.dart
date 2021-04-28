import 'package:flutter/material.dart';
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
      image: new Image.asset('assets/images/logo1.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: Colors.white,
    );
  }
}
