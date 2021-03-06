import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/view/signin_screen/pages/reset_password.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

class RememberButton extends StatefulWidget {
  final bool rememberMe;
  RememberButton(this.rememberMe);
  @override
  _RememberButtonState createState() => _RememberButtonState(rememberMe);
}

class _RememberButtonState extends State<RememberButton> {
  bool rememberMe;
  _RememberButtonState(this.rememberMe);
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: Color(0xFF1CBD8D),
                value: controllers.isChecked,
                onChanged: (bool value) {
                  controllers.changeStateChecked();
                }),
            Text(
              'Remember',
              style: privacy,
            )
          ],
        ),
        InkWell(
          onTap: () {
            controllers.passwordController.text = "";
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResetPasswordPage()));
          },
          child: Text(
            'Forgot Password?',
            style: privacyBlue,
            // Prebaci na reset password To Do
          ),
        )
      ],
    );
  }
}
