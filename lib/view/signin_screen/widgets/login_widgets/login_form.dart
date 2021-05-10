import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/email_field.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/login_button.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/password_field.dart';
import 'package:lmma_box/utils/style/styles.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  var _scaffoldKey;
  LoginForm(this._formKey, this._scaffoldKey);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: widget._formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: MediaQuery.of(context).size.width < 380
                      ? labelaStyleSmall
                      : labelaStyle,
                ),
              ),
              EmailField(),
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: MediaQuery.of(context).size.width < 380
                      ? labelaStyleSmall
                      : labelaStyle,
                ),
              ),
              PasswordField(widget._scaffoldKey),
              LoginButton(widget._formKey, widget._scaffoldKey),
            ],
          ),
        ),
      ],
    );
  }
}
