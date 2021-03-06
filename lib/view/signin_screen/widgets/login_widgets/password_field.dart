import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
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
  var pom = false;

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        if (visible) {
          setState(() {
            pom = true;
          });
        } else {
          setState(() {
            pom = false;
          });
        }
      },
    );

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: controllers.focusNode,
      controller: controllers.passwordController,
      obscureText: controllers.obscureText,
      decoration: InputDecoration(
        hintText: '••••••••••',
        suffix: InkWell(
          onTap: pom == false
              ? controllers.togglePasswordViewInVisible
              : controllers.togglePasswordViewVisible,
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
