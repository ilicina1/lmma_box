import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Enter the email address associated with your account, and we’ll email you a link to reset your password",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
