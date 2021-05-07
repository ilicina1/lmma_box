import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:provider/provider.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
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
          Text(
            "Email",
            style: MediaQuery.of(context).size.width < 470
                ? labelaStyleSmall
                : labelaStyle,
          ),
          TextFormField(
            validator: (value) {
              if (value.contains('@') && value.length > 8) return null;
              return "Please enter your email";
            },
            controller: controllers.emailController,
            decoration: InputDecoration(
              hintText: 'Enter your Email',
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
