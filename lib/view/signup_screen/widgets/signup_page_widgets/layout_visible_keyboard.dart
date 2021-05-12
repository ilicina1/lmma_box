import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/divider.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/email_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/name_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/password_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/phone_number_field.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/policy_text.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/signup_button.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/signup_social_row.dart';

Widget layoutVisibleKeyboard(context, _formKey, _scaffoldKey) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.62,
    child: ListView(
      // physics: BouncingScrollPhysics(),
      children: [
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: MediaQuery.of(context).size.width < 380
                      ? const EdgeInsets.fromLTRB(0, 0, 0, 15)
                      : const EdgeInsets.fromLTRB(0, 0, 0, 30),
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
                PasswordField(_scaffoldKey),
                PolicyAndTerms(context),
                SignUpButton(_formKey, _scaffoldKey),
                LoginDivider(),
                SignUpSocialRow(context),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
