import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  final GlobalKey<ScaffoldState> _scaffoldKey;
  LoginButton(this._formKey, this._scaffoldKey);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        width: double.infinity,
        child: isLoading
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    primary: Color(0xFFFFDF36)),
                onPressed: () async {
                  setState(() {
                    isLoading = false;
                  });
                  await controllers.loginButtonOnPressed(
                      context, widget._formKey, widget._scaffoldKey);

                  setState(() {
                    isLoading = true;
                  });

                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  // if (_formKey.currentState.validate()) {
                  //   // Process data.
                  // }
                },
                child: Text(
                  'Login',
                  style: twoButtonsStyle,
                ),
              )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
