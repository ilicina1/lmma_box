import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';

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

    var controllers = context.watch<FormSignUpNotifier>();

    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 10.0)
          : const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: MediaQuery.of(context).size.width < 380
                ? labelaStyleSmall
                : labelaStyle,
          ),
          TextFormField(
            validator: (value) {
              String pattern =
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
              RegExp regExp = new RegExp(pattern);
              if (regExp.hasMatch(value) == true) return null;
              return "Please enter your password.";
            },
            controller: controllers.passwordController,
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
