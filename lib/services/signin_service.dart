import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/interface/signin_interface.dart';
import 'package:lmma_box/utils/shared/strings.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';

class SignInService implements SignInInterface {
  @override
  Future signUserInWithAuthCode(String authCode, BuildContext context) async {
    final COGNITO_CLIENT_ID = cognitoKlijentId;
    final COGNITO_Pool_ID = cognitoPoolId;

    var finalCode;
    String url;
    if (authCode.contains('#')) {
      finalCode = authCode.split('#');
      url = "https://meelz.auth.us-east-1" +
          ".amazoncognito.com/oauth2/token?grant_type=authorization_code&client_id=" +
          "${COGNITO_CLIENT_ID}&code=" +
          finalCode[0] +
          "&redirect_uri=http://localhost:4200/home";
    } else {
      url = "https://meelz.auth.us-east-1" +
          ".amazoncognito.com/oauth2/token?grant_type=authorization_code&client_id=" +
          "${COGNITO_CLIENT_ID}&code=" +
          authCode +
          "&redirect_uri=http://localhost:4200/home";
    }

    final response = await http.post(Uri.parse(url),
        body: {},
        headers: {'Content-Type': 'application/x-www-form-urlencoded'});

    if (response.statusCode != 200) {
      throw Exception("Received bad status code from Cognito for auth code:" +
          response.statusCode.toString() +
          "; body: " +
          response.body);
    }

    final tokenData = json.decode(response.body);

    final idToken = new CognitoIdToken(tokenData['id_token']);
    final accessToken = new CognitoAccessToken(tokenData['access_token']);
    final refreshToken = new CognitoRefreshToken(tokenData['refresh_token']);
    final session = new CognitoUserSession(idToken, accessToken,
        refreshToken: refreshToken);
    final userPool = new CognitoUserPool(COGNITO_Pool_ID, COGNITO_CLIENT_ID);
    final user = new CognitoUser(null, userPool, signInUserSession: session);
    final attributes = await user.getUserAttributes();

    await user.signOut();

    for (CognitoUserAttribute attribute in attributes) {
      if (attribute.getName() == "email") {
        user.username = attribute.getValue();
        break;
      }
    }

    print("tralala");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => TestSignUp(user.username)),
    );

    print(user.username);

    return user;
  }
}
