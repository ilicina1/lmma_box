import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';

class ButtonReset extends StatelessWidget {
  const ButtonReset({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width < 380
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
          'Send reset Link',
          style: twoButtonsStyle,
        ),
        onPressed: () {},
      ),
    );
  }
}
