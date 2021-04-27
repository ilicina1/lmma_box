import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/app_bar_widget.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/center_image.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/header_text.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/next_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/previous_button.dart';

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
          SafeArea(
            child: appBarWidget(),
          ),
          centerImage(context),
          HeaderText(),
          Column(
            children: [
              previousButton(),
              nextButton(),
            ],
          ),
        ],
      ),
    );
  }
}
