import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/viewModel/validate_password_viewModel.dart';
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
            focusNode: controllers.focusNode,
            obscureText: controllers.obscureText,
            validator: (value) {
              if (ValidatePasswordModel(value, _scaffoldKey) == false)
                return "Please enter your password.";
              return null;
            },
            controller: controllers.passwordResetController,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: MediaQuery.of(context).viewInsets.bottom == 0
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
