import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class TextRich extends StatelessWidget {
  const TextRich({
    Key key,
  }) : super(key: key);

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
            children: <TextSpan>[
              TextSpan(
                text: ' Try again ',
                style: privacyBlueConf,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
