import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 10.0)
          : const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: MediaQuery.of(context).size.width < 470
                ? labelaStyleSmall
                : labelaStyle,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Enter your Email',
              hintStyle: hintStyle,
              focusedBorder: focused,
              border: border,
            ),
          ),
        ],
      ),
    );
  }
}
