import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SignUpButton extends StatefulWidget {
  var _formKey;
  var _scaffoldKey;
  SignUpButton(this._formKey, this._scaffoldKey);
  @override
  _signUpButtonState createState() => _signUpButtonState();
}

class _signUpButtonState extends State<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignUpNotifier>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width < 380
            ? MediaQuery.of(context).size.height * 0.05
            : 45,
        child: !controllers.isLoading
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    primary: Color(0xFFFFDF36)),
                child: Text(
                  'Sign Up',
                  style: twoButtonsStyle,
                ),
                onPressed: () async {
                  controllers.changeStateLoading();

                  await widget._formKey.currentState.validate()
                      ? controllers.createAccountOnPressed(
                          //ovdje loader staviti
                          context,
                          widget._formKey,
                          widget._scaffoldKey)
                      : controllers.changeStateLoading();
                  ;
                },
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
