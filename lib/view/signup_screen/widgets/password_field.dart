import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    void togglePasswordView() {
      setState(() {
        _isHidden = !_isHidden;
      });
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: labelaStyle,
          ),
          TextFormField(
            obscureText: _isHidden,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              suffix: InkWell(
                onTap: togglePasswordView,
                child: Icon(
                  Icons.visibility,
                  color: Color(0xFF8B8B8B),
                ),
              ),
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
