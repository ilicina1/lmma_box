import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/app_bar_widget.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/app_icon.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: appBarWidget(),
      body: Column(
        children: [
          SafeArea(
            child: appBarWidget(),
          ),
        ],
      ),
    );
  }
}
