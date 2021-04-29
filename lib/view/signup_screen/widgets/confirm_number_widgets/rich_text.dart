import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';

class TextRich extends StatelessWidget {
  var _formKey;
  var _scaffoldKey;
  TextRich(this._formKey, this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormNotifier>();

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
                recognizer: new TapGestureRecognizer()
                  ..onTap = () =>
                      controllers.submitCode(context, _formKey, _scaffoldKey),
                style: privacyBlueConf,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
