import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class NameField extends StatefulWidget {
  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: labelaStyle,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter your Name',
            hintStyle: hintStyle,
            focusedBorder: focused,
            border: border,
          ),
        ),
      ],
    );
  }
}
