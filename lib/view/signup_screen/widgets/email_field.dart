import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
              color: Color(0xff373737),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your Email',
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
      ),
    );
  }
}
