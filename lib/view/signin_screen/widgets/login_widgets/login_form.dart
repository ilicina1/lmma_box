import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
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
  void togglePasswordView() {
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
                      hintText: 'Enter your password',
                      suffix: InkWell(
                        onTap: togglePasswordView,
                        child: _obscureText
                            ? Icon(
                                Icons.visibility,
                                color: Color(0xFF8B8B8B),
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Color(0xFF8B8B8B),
                              ),
                      ),
                      hintStyle: hintStyle,
                      focusedBorder: focused,
                      border: border,
                    ),
                    validator: (value) {
                      String pattern =
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                      RegExp regExp = new RegExp(pattern);
                      if (regExp.hasMatch(value) == true)
                        return null;
                      else {
                        widget._scaffoldKey.currentState.showSnackBar(
                          SnackBar(
                            content: Text(
                                "Password should be at least 8 characters long and should include at least one lower and upper case characters, one number and one symbol"),
                          ),
                        );
                      }
                      return "Your password is incorrect!";
                    }),
                LoginButton(widget._formKey, widget._scaffoldKey),
              ],
            )),
      ],
    );
  }
}
