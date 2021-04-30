import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/loading_screen/pages/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ScreenScrollProvider(0),
    child: MyApp(),
  ));
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LmmaBox',
      theme: ThemeData(
        fontFamily: 'Averta',
        primarySwatch: Colors.blue,
      ),
      home: SplashApp(),
    );
  }
}
