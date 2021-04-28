import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHidden = true;
  void togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: TextStyle(
              color: Color(0xff373737),
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            obscureText: _isHidden,
            decoration: const InputDecoration(
              hintText: 'Enter your password',
              suffix: InkWell(
                // onTap: togglePasswordView,
                child: Icon(Icons.visibility),
              ),
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
