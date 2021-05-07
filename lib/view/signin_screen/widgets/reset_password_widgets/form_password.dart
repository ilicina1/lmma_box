import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/services/validate_password.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

// ignore: must_be_immutable
class PasswordForm extends StatelessWidget {
  var _scaffoldKey;
  PasswordForm(this._scaffoldKey);
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 30.0)
          : const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New password",
            style: MediaQuery.of(context).size.width < 470
                ? labelaStyleSmall
                : labelaStyle,
          ),
          TextFormField(
            obscureText: true,
            validator: (value) {
              if (validatePassword(value, _scaffoldKey) == false)
                return "Please enter your password.";
              return null;
            },
            controller: controllers.passwordController,
            decoration: InputDecoration(
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
