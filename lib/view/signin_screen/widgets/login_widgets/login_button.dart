import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final LoginData loginData = LoginData(name: 'jaja', password: "jaja");

  LoginButton(this._formKey);

  Future<String> signIn(LoginData data) async {
    SignInResult result = await Amplify.Auth.signIn(
        username: data.name,
        password: data.password,
        options: CognitoSignInOptions());
    if (result.isSignedIn) {
      print('signed in');
    } else {
      print('failed to sign in ');
    }
  }

  @override
  Widget build(BuildContext context) {
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
            signIn(loginData);
            if (_formKey.currentState.validate()) {
              // Process data.
            }
          },
          child: Text('Login', style: TextStyle(color: Color(0xFF68572d)))),
    );
  }
}
