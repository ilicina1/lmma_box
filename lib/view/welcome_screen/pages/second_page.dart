import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/center_image.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/header_text.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SafeArea(
          //   child: appBarWidget(),
          // ),
          centerImage(context),
          HeaderText(),
        ],
      ),
    );
  }
}
