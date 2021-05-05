import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final GlobalKey<ScaffoldState> _scaffoldKey;
  LoginButton(this._formKey, this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      width: 315,
      height: 45,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              primary: Color(0xFFFFDF36)),
          onPressed: () {
            // Validate will return true if the form is valid, or false if
            // the form is invalid.
            if (_formKey.currentState.validate()) {
              controllers.loginButtonOnPressed(context, _formKey, _scaffoldKey);
            }
          },
          child: Text('Login',
              style: TextStyle(
                  fontFamily: "Averta CY",
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF68572d)))),
    );
  }
}
