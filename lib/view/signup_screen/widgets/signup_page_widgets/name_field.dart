import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';

class NameField extends StatefulWidget {
  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormNotifier>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: MediaQuery.of(context).size.width < 380
              ? labelaStyleSmall
              : labelaStyle,
        ),
        TextFormField(
          controller: controllers.nameController,
          decoration: InputDecoration(
            hintText: 'Enter your Name',
            hintStyle: hintStyle,
            focusedBorder: focused,
            border: border,
          ),
        ),
      ],
    );
  }
}
