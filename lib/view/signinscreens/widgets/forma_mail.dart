import 'package:flutter/material.dart';

class FormaEmail extends StatelessWidget {
  const FormaEmail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(
              color: Color(0xFF373737),
              fontWeight: FontWeight.w700,
              fontSize: 14,
              fontFamily: "Averta"),
          hintStyle: TextStyle(fontSize: 16),
          hintText: "Enter your Email"),
      style: TextStyle(fontSize: 20),
    );
  }
}
