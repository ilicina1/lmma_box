import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';

Future<void> linkedinSignIn(name, email) async {
  print("$name  $email");
  Map<String, String> userAttributes = {
    "name": name,
    "email": email,
  };
  print("prvi");

  try {
    final response = await Amplify.Auth.signUp(
      username: email,
      password: "Password123!",
      options: CognitoSignUpOptions(userAttributes: userAttributes),
    );
  } on AuthException catch (e) {
    print("${e.message}");
  }
}
