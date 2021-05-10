import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signin_screen/pages/confirm_code.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';

class FormSignInNotifier extends ChangeNotifier {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordResetController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  TextEditingController _confirmationCodeController = TextEditingController();
  bool _obscureText = true;
  bool _isChecked = false;
  bool _isLoading = true;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get passwordResetController => _passwordResetController;
  TextEditingController get passwordConfirmController =>
      _passwordConfirmController;
  TextEditingController get confirmationCodeController =>
      _confirmationCodeController;
  bool get obscureText => _obscureText;
  bool get isChecked => _isChecked;
  bool get isLoading => _isLoading;

  void changeStateLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void changeStateChecked() {
    _isChecked = !_isChecked;
    notifyListeners();
  }

  void togglePasswordView() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

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

  Future<void> submitResetCode(context, _scaffoldKey) async {
    try {
      await Amplify.Auth.confirmPassword(
        username: _emailController.text.trim(),
        newPassword: _passwordResetController.text.trim(),
        confirmationCode: _confirmationCodeController.text,
      );
      _emailController.text = "";
      _passwordController.text = "";
      _confirmationCodeController.text = "";
      Navigator.pop(context, true);
    } on AuthException catch (e) {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(e.message),
        ),
      );
    }

    notifyListeners();
  }
}
