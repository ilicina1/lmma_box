import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/divider.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/email_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/login_rich_text.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/name_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/password_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/phone_number_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/policy_text.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/signup_button.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/signup_social_row.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: MediaQuery.of(context).size.width < 380
                  ? const EdgeInsets.fromLTRB(0, 10, 0, 15)
                  : const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Text(
                "Create Account",
                style: MediaQuery.of(context).size.width < 380
                    ? createAccountSmall
                    : createAccount,
              ),
            ),
            NameField(),
            EmailField(),
            PhoneNumberField(),
            PasswordField(),
            policyAndTerms(context),
            signUpButton(context),
            dividerOr(context),
            signUpSocialRow(context),
            loginRichText(context),
          ],
        ),
      ),
    );
  }
}