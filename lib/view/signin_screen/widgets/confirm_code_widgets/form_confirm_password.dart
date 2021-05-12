import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/viewModel/validate_password_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

class PasswordConfirmForm extends StatefulWidget {
  var _scaffoldKey;
  PasswordConfirmForm(this._scaffoldKey);
  @override
  _PasswordConfirmFormState createState() => _PasswordConfirmFormState();
}

class _PasswordConfirmFormState extends State<PasswordConfirmForm> {
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

    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 30.0)
          : const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm password",
            style: MediaQuery.of(context).size.width < 470
                ? labelaStyleSmall
                : labelaStyle,
          ),
          TextFormField(
            focusNode: controllers.focusNodeConfirm,
            obscureText: controllers.obscureTextSecond,
            validator: (value) {
              if (ConfirmPassword(
                      value,
                      controllers.passwordResetController.text.trim(),
                      widget._scaffoldKey) ==
                  false) return "Please enter your password";
              return null;
            },
            controller: controllers.passwordConfirmController,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: pom == false
                    ? controllers.togglePasswordViewInVisibleSecond
                    : controllers.togglePasswordViewSecond,
                child: controllers.obscureTextSecond
                    ? Icon(
                        Icons.visibility,
                        color: Color(0xFF8B8B8B),
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: Color(0xFF8B8B8B),
                      ),
              ),
              hintText: 'Enter your new password',
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
