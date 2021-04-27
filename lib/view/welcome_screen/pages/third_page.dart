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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/logothirdpage.png'),
          ),
          HeaderTextThird(),
        ],
      ),
    );
  }
}