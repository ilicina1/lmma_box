import 'package:flutter/material.dart';

class TextRich extends StatelessWidget {
  const TextRich({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          text: 'Didn’t get a code?',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: ' Try again ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
