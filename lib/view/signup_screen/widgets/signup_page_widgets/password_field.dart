import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHidden = true;
  bool _isShown = false;
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    void togglePasswordView() {
      setState(() {
        _isHidden = !_isHidden;
        FocusScope.of(context).unfocus();
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
          Stack(
            children: <Widget>[
              TextFormField(
                focusNode: _focusNode,
                validator: (value) {
                  String pattern =
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                  RegExp regExp = new RegExp(pattern);
                  if (regExp.hasMatch(value) == true) return null;
                  return "Please enter your password.";
                },
                controller: controllers.passwordController,
                obscureText: _isHidden,
                obscuringCharacter: '•',
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  suffix: Stack(
                    alignment: Alignment.centerRight,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          _focusNode.unfocus();
                          _focusNode.canRequestFocus = false;
                          setState(() {
                            _isHidden = !_isHidden;
                          });
                        },
                      ),
                    ],
                  ),
                  hintStyle: hintStyle,
                  focusedBorder: focused,
                  border: border,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
