import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';

class FormSignInNotifier extends ChangeNotifier {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  Future<void> signOut() async {
    try {
      Amplify.Auth.signOut();
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  Future<void> loginButtonOnPressed(
      BuildContext context, _formKey, _scaffoldKey) async {
    if (_formKey.currentState.validate()) {
      signOut();

      /// Login code
      try {
        final email = _emailController.text.trim();
        final password = _passwordController.text.trim();

        final response = await Amplify.Auth.signIn(
          username: email,
          password: password,
        );

        if (response.isSignedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => TestSignUp(),
            ),
          );
        }
      } on AuthException catch (e) {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: Text(e.message),
          ),
        );
      }
    }
    notifyListeners();
  }
}
