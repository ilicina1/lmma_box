import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 24),
        alignment: Alignment.topLeft,
        child: Text(
          'Welcome Back!',
          style: headerNewText,
        ));
  }
}
