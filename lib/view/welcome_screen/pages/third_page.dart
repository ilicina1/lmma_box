import 'package:flutter/material.dart';
import 'package:lmma_box/utils/dummyData/dummyData.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/app_bar_widget.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/header_text.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/next_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/previous_button.dart';
import 'package:lmma_box/view/welcome_screen/widgets/third_page_widgets/headerTextThird.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    trenutnaStranica = "third_page";
  }

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
          Center(
            child: Image.asset('assets/images/logothirdpage.png'),
          ),
          HeaderTextThird(),
          Column(
            children: [
              previousButton(context),
              nextButton(context),
            ],
          ),
        ],
      ),
    );
  }
}
