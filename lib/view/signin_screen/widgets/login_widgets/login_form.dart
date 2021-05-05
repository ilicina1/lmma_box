import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/services/validate_password.dart';
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
                    child: Text('Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            fontFamily: "Averta CY",
                            fontStyle: FontStyle.normal))),
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
                    child: Text('Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            fontFamily: "Averta CY",
                            fontStyle: FontStyle.normal))),
                TextFormField(
                    controller: controllers.passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: '••••••••••',
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
                      if (validatePassword(value, widget._scaffoldKey) == false)
                        return "Please enter your password.";
                    }),
                LoginButton(widget._formKey, widget._scaffoldKey),
              ],
            )),
      ],
    );
  }
}
