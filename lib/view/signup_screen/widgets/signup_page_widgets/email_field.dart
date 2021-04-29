import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormNotifier>();

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
