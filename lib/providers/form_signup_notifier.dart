import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signin_screen/pages/login_screen.dart';
import 'package:cool_alert/cool_alert.dart';

class FormSignUpNotifier extends ChangeNotifier {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  bool _isHidden = true;
  String _phoneNumber = "";
  FocusNode _focusNode = FocusNode();

  TextEditingController get nameController => _nameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmController => _confirmController;
  bool get isHidden => _isHidden;
  String get phoneNumber => _phoneNumber;
  FocusNode get focusNode => _focusNode;

  void changePhone(number) {
    print("$number u metodi");
    _phoneNumber = number;
    notifyListeners();
  }

  void togglePasswordViewInVisible() {
    _isHidden = !_isHidden;
    focusNode.unfocus();
    focusNode.canRequestFocus = false;

    notifyListeners();
  }

  void togglePasswordViewVisible() {
    _isHidden = !_isHidden;
    notifyListeners();
  }

  Future<void> createAccountOnPressed(
      BuildContext context, _formKey, _scaffoldKey) async {
    if (_formKey.currentState.validate()) {
      final name = _nameController.text.trim();
      final email = _emailController.text.trim();
      final password = _passwordController.text;
      // print(phoneNumber);

      // _phoneNumber = _phoneNumber.substring(1);

      print("$_phoneNumber broj");

      /// In this user attribute you can define the custom fields associated with the user.
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
          _goToLoginScreen(context, _formKey, _scaffoldKey);
        }
      } on AuthException catch (e) {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: e.message == "Username already exists in the system."
                ? Text("Account already exists. Try again or Sign in.")
                : Text(e.message),
          ),
        );
      }
    }
    notifyListeners();
  }

  void _goToLoginScreen(BuildContext context, _formKey, _scaffoldKey) {
    CoolAlert.show(
      onConfirmBtnTap: () async {
        await FlutterSession().set("isSignedIn", true);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => LoginScreen(),
          ),
        );
      },
      context: context,
      title: "You have successfully signed up!",
      type: CoolAlertType.success,
    );
    notifyListeners();
  }
}
