import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class TextRich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text: 'Didn’t get a code?',
            style: privacyConf,
            children: [
              TextSpan(
                text: ' Try again ',
                // recognizer: new TapGestureRecognizer()
                //   ..onTap = () =>
                //       controllers.submitCode(context, _formKey, _scaffoldKey),
                style: privacyBlueConf,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
