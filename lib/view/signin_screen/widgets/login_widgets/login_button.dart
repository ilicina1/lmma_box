import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

class LoginButton extends StatefulWidget {
  final GlobalKey<FormState> _formKey;
  final GlobalKey<ScaffoldState> _scaffoldKey;
  LoginButton(this._formKey, this._scaffoldKey);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width < 380
            ? MediaQuery.of(context).size.height * 0.05
            : 45,
        child: controllers.isLoading
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    primary: Color(0xFFFFDF36)),
                onPressed: () async {
                  controllers.changeStateLoading();

                  await controllers.loginButtonOnPressed(
                      context, widget._formKey, widget._scaffoldKey);

                  controllers.changeStateLoading();
                },
                child: Text(
                  'Login',
                  style: twoButtonsStyle,
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
