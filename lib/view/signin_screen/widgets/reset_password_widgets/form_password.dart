import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';

class PasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 10.0)
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
            validator: (value) {
              String pattern =
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
              RegExp regExp = new RegExp(pattern);
              if (regExp.hasMatch(value) == true) return null;
              return "Please enter your new password.";
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
