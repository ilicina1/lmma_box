import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/viewModel/validate_password_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  var _scaffoldKey;
  PasswordField(this._scaffoldKey);
  @override
  _passwordFieldState createState() => _passwordFieldState();
}

class _passwordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();
    return TextFormField(
      controller: controllers.passwordController,
      obscureText: controllers.obscureText,
      decoration: InputDecoration(
        hintText: '••••••••••',
        suffix: InkWell(
          onTap: controllers.togglePasswordView,
          child: controllers.obscureText
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
        if (ValidatePasswordModel(value, widget._scaffoldKey) == false)
          return "Please enter your password.";
        return null;
      },
    );
  }
}
