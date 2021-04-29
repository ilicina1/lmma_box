import 'package:flutter/material.dart';

class ButtonReset extends StatelessWidget {
  const ButtonReset({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          primary: Color(0xFFFFDF36)),
      child: Text(
        'Send reset link',
        style: TextStyle(
            fontFamily: "Averta CY",
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600),
      ),
      onPressed: () {},
    );
  }
}
