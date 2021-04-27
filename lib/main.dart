import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LmmaBox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashApp(),
    );
  }
}
