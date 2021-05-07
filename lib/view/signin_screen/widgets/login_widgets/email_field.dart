import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:provider/provider.dart';

class emailField extends StatefulWidget {
  @override
  _emailFieldState createState() => _emailFieldState();
}

class _emailFieldState extends State<emailField> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return TextFormField(
      controller: controllers.emailController,
      decoration: InputDecoration(
        hintText: 'example@email.test',
        hintStyle: hintStyle,
        focusedBorder: focused,
        border: border,
      ),
      validator: (value) {
        if (value.contains('@') && value.length > 8) return null;
        return "Please enter your email";
      },
    );
  }
}
