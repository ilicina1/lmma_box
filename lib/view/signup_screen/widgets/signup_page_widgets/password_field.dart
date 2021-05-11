import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/password_field_text.dart';
import 'package:lmma_box/viewModel/validate_password_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  var _scaffoldKey;
  PasswordField(this._scaffoldKey);
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  // FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignUpNotifier>();

    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 10.0)
          : const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PasswordText(context),
          TextFormField(
            focusNode: controllers.focusNode,
            validator: (value) {
              if (ValidatePasswordModel(value, widget._scaffoldKey) == false)
                return "Please enter your password.";
              return null;
            },
            controller: controllers.passwordController,
            obscureText: controllers.isHidden,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              suffix: InkWell(
                onTap: MediaQuery.of(context).viewInsets.bottom == 0
                    ? controllers.togglePasswordViewInVisible
                    : controllers.togglePasswordViewVisible,
                child: controllers.isHidden ? iconVisible : iconInvisible,
              ),
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
