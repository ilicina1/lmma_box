import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signin_screen/pages/confirm_code.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';

class FormSignInNotifier extends ChangeNotifier {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmationCodeController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmationCodeController =>
      _confirmationCodeController;

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
          _emailController.text = "";
          _passwordController.text = "";
          _confirmationCodeController.text = "";
          await FlutterSession().set("isSignedIn", true);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => TestSignUp(email),
            ),
          );
        }
      } on AuthException catch (e) {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
              content: e.message == "User not confirmed in the system."
                  ? Text(
                      "${e.message} Please verify your email before loging in.")
                  : Text(e.message)),
        );
        if (e.message == "User not confirmed in the system.") print("ss");
        print("s");
      }
    }
    notifyListeners();
  }

  Future<void> resetPassword(context) async {
    try {
      await Amplify.Auth.resetPassword(
        username: _emailController.text.trim(),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ConfirmCodePage(),
        ),
      );
    } on AuthException catch (e) {
      print(e.message);
    }
    notifyListeners();
  }

  Future<void> submitResetCode(context) async {
    try {
      await Amplify.Auth.confirmPassword(
        username: _emailController.text.trim(),
        newPassword: _passwordController.text.trim(),
        confirmationCode: _confirmationCodeController.text,
      );
      Navigator.pop(
        context,
      );
    } on AuthException catch (e) {
      print(e);
    }
    _emailController.text = "";
    _passwordController.text = "";
    _confirmationCodeController.text = "";

    notifyListeners();
  }
}
