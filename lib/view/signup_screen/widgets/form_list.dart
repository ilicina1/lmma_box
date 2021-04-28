import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:lmma_box/view/signup_screen/widgets/email_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/name_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/password_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/phone_number_field.dart';

class FormList extends StatefulWidget {
  @override
  _FormListState createState() => _FormListState();
}

class _FormListState extends State<FormList> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "Create Account",
                style: createAccount,
              ),
            ),
            NameField(),
            EmailField(),
            PhoneNumberField(),
            PasswordField(),
          ],
        ),
      ),
    );
  }
}
