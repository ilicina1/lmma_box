import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/app_bar_widget.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: welcomeAppBar(),
      body: Container(),
    );
  }
}
