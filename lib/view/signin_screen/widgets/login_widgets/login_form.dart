import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  LoginForm(this._formKey);

  @override
  _LoginFormState createState() => _LoginFormState(_formKey);
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;
  GlobalKey<FormState> _formKey;
  _LoginFormState(this._formKey);

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.topLeft,
                child: Text('Email')),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'example@email.test',
              ),
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.topLeft,
                child: Text('Password')),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: '**********',
                suffixIcon: IconButton(
                    icon: FaIcon(_obscureText
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash),
                    onPressed: _toggle),
              ),
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
          ],
        ));
  }
}
