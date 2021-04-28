import 'package:flutter/material.dart';

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
          style: TextStyle(
            color: Color(0xff373737),
            fontWeight: FontWeight.bold,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: 'Enter your Name',
            hintStyle: TextStyle(
              color: Color(0xFFBABABA),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFFFDF36),
                width: 2.0,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE0E0E0),
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
