import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:provider/provider.dart';

class NameField extends StatefulWidget {
  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  @override
  Widget build(BuildContext context) {
    var focusNode = FocusNode();

    var controllers = context.watch<FormSignUpNotifier>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: MediaQuery.of(context).size.width < 380
              ? labelaStyleSmall
              : labelaStyle,
        ),
        GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(focusNode);
          },
          child: TextFormField(
            focusNode: focusNode,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            controller: controllers.nameController,
            decoration: InputDecoration(
              hintText: 'Enter your Name',
              hintStyle: hintStyle,
              focusedBorder: focused,
              border: border,
            ),
          ),
        ),
      ],
    );
  }
}
