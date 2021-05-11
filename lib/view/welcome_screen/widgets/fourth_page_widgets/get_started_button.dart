import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signup_screen/pages/signup_page.dart';

Widget GetStarted(context, _pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height < 670
          ? MediaQuery.of(context).size.height * 0.05
          : 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            primary: Color(0xFFFFDF36)),
        child: Text(
          'Get started',
          style: getStartedStyle,
        ),
        onPressed: () async {
          await FlutterSession().set("seen", true);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
        },
      ),
    ),
  );
}
