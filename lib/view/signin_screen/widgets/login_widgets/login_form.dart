import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/login_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  var _scaffoldKey;
  LoginForm(this._formKey, this._scaffoldKey);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();
    return Column(
      children: [
        Form(
            key: widget._formKey,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.topLeft,
                    child: Text('Email')),
                TextFormField(
                  controller: controllers.emailController,
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
                    controller: controllers.passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: '••••••••••',
                      suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility,
                            color: Color(0xFF8B8B8B),
                          ),
                          onPressed: _toggle),
                    ),
                    validator: (value) {
                      String pattern =
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                      RegExp regExp = new RegExp(pattern);
                      if (regExp.hasMatch(value) == true) return null;
                      return "Please enter your password.";
                    }),
                LoginButton(widget._formKey, widget._scaffoldKey),
              ],
            )),
      ],
    );
  }
}
