import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signin_screen/pages/confirm_code.dart';
import 'package:lmma_box/view/signin_screen/pages/login_screen.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';

class FormSignInNotifier extends ChangeNotifier {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordResetController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  TextEditingController _confirmationCodeController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  // FocusNode _focusNodeConfirm = FocusNode();
  String _controller = "";

  bool _obscureText = true;
  bool _obscureTextSecond = true;

  bool _isChecked = false;
  bool _isLoading = true;

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get passwordResetController => _passwordResetController;
  TextEditingController get passwordConfirmController =>
      _passwordConfirmController;
  TextEditingController get confirmationCodeController =>
      _confirmationCodeController;
  FocusNode get focusNode => _focusNode;
  // FocusNode get focusNodeConfirm => _focusNodeConfirm;
  String get controller => _controller;

  bool get obscureText => _obscureText;
  bool get obscureTextSecond => _obscureTextSecond;

  bool get isChecked => _isChecked;
  bool get isLoading => _isLoading;

  void setConfController(value) {
    _controller = value;
    notifyListeners();
  }

  void changeStateLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  void changeStateChecked() {
    _isChecked = !_isChecked;
    notifyListeners();
  }

  void togglePasswordViewInVisible() {
    _obscureText = !_obscureText;
    focusNode.unfocus();
    focusNode.canRequestFocus = false;

    notifyListeners();
  }

  void togglePasswordViewVisible() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  void togglePasswordView() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  // void togglePasswordViewInVisibleSecond() {
  //   _obscureTextSecond = !_obscureTextSecond;
  //   focusNodeConfirm.unfocus();
  //   focusNodeConfirm.canRequestFocus = false;

  //   notifyListeners();
  // }

  void togglePasswordViewSecond() {
    _obscureTextSecond = !_obscureTextSecond;
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
      Navigator.pushReplacement(
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
    print("$_confirmationCodeController controller");
    try {
      await Amplify.Auth.confirmPassword(
        username: _emailController.text.trim(),
        newPassword: _passwordResetController.text.trim(),
        confirmationCode: _controller,
      );
      _emailController.text = "";
      _passwordController.text = "";
      _confirmationCodeController.text = "";
      CoolAlert.show(
        onConfirmBtnTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => LoginScreen(),
            ),
          );
        },
        context: context,
        title: "You have successfully changed password!",
        type: CoolAlertType.success,
      );
      // Navigator.pop(context);
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
