import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/pages/reset_password.dart';

class RememberButton extends StatefulWidget {
  final bool rememberMe;
  RememberButton(this.rememberMe);
  @override
  _RememberButtonState createState() => _RememberButtonState(rememberMe);
}

class _RememberButtonState extends State<RememberButton> {
  bool rememberMe;
  _RememberButtonState(this.rememberMe);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: Color(0xFF1CBD8D),
                value: rememberMe,
                onChanged: (bool value) {
                  setState(() {
                    this.rememberMe = value;
                  });
                }),
            Text('Remember',
                style: TextStyle(
                    fontFamily: "Averta CY",
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF373737)))
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResetPasswordPage()));
          },
          child: Text(
            'Forgot Password?',
            style: TextStyle(
                fontFamily: "Averta CY",
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1CBD8D)),
            // Prebaci na reset password To Do
          ),
        )
      ],
    );
  }
}
