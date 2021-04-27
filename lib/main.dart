import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/welcome_screen/pages/fourth_page.dart';
import 'package:lmma_box/view/welcome_screen/pages/page_view.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/view/welcome_screen/pages/splash_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ScreenScrollProvider(1),
  child: MyApp(),));
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
