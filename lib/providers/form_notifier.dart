import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/dummyData/dummyData.dart';
import 'package:lmma_box/view/signup_screen/pages/confirm_number.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';

class FormNotifier extends ChangeNotifier {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();

  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmController => _confirmController;

  Future<void> createAccountOnPressed(
      BuildContext context, _formKey, _scaffoldKey) async {
    if (_formKey.currentState.validate()) {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final password = _passwordController.text;

      phoneNumber = phoneNumber.substring(1);

      /// In this user attribute you can define the custom fields associated with the user.
      /// For example birthday, telephone number, etc
      Map<String, String> userAttributes = {
        "name": name,
        "email": email,
        "phone_number": "+387$phoneNumber"
      };

      try {
        final result = await Amplify.Auth.signUp(
          username: email,
          password: password,
          options: CognitoSignUpOptions(userAttributes: userAttributes),
        );
        if (result.isSignUpComplete) {
          _gotToEmailConfirmationScreen(context, _formKey, _scaffoldKey);
        }
      } on AuthException catch (e) {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: e.message == "Username already exists in the system."
                ? Text("Email already exists in the system")
                : Text(e.message),
          ),
        );
      }
    }
    notifyListeners();
  }

  void _gotToEmailConfirmationScreen(
      BuildContext context, _formKey, _scaffoldKey) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ConfirmNumberPage(_formKey, _scaffoldKey),
      ),
    );
    notifyListeners();
  }

  Future<void> submitCode(BuildContext context, _formKey, _scaffoldKey) async {
    if (_formKey.currentState.validate()) {
      final confirmationCode = _confirmController.text;
      final email = _emailController.text.trim();

      try {
        final SignUpResult response = await Amplify.Auth.confirmSignUp(
          username: email,
          confirmationCode: confirmationCode,
        );
        if (response.isSignUpComplete) {
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
  }
}
