import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 24),
        alignment: Alignment.topLeft,
        child: Text(
          'Welcome Back!',
          style: MediaQuery.of(context).size.width < 380
              ? createAccountSmall
              : createAccount,
        ));
  }
}
