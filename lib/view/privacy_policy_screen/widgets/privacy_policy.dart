import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/app_bar_back.dart';

class PrivacyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBarWithIconBackReplace(context, "Privacy policy"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Image.asset(
                'assets/lmmaa_box.png',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Privacy policy",
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SingleChildScrollView(
                  child: Text(
                    "Description that is too long in text format(Here Data is coming from API)",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SingleChildScrollView(
          //   child: Text(
          //     "Description that is too long in text format(Here Data is coming from API)",
          //     style: TextStyle(
          //       fontSize: 16.0,
          //       color: Colors.black87,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
