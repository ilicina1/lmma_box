import 'dart:async';
import 'dart:convert';
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';
import 'package:webview_flutter/webview_flutter.dart';

final userPool =
    CognitoUserPool('us-east-1_aSrVrEGDM', '17dek63mv7hiqt5th6as9ivasa');

final Completer<WebViewController> _webViewController =
    Completer<WebViewController>();
Widget getWebView(context) {
  var url =
      "https://lmma-linkedin.auth.us-east-1.amazoncognito.com/oauth2/authorize?response_type=code&identity_provider=Auth0-LinkedIn&client_id=17dek63mv7hiqt5th6as9ivasa&redirect_uri=https://example.com/&scope=openid&connection=linkedin";
  return WebView(
    initialUrl: url,
    userAgent: 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) ' +
        'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36',
    javascriptMode: JavascriptMode.unrestricted,
    onWebViewCreated: (WebViewController webViewController) {
      _webViewController.complete(webViewController);
    },
    navigationDelegate: (NavigationRequest request) async {
      if (request.url.startsWith("https://example.com/?code=")) {
        String code =
            request.url.substring("https://example.com/?code=".length);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TestSignUp()),
        );
        // await signUserInWithAuthCode(code, context);
        return NavigationDecision.prevent;
      }
      return NavigationDecision.navigate;
    },
    gestureNavigationEnabled: true,
  );
}

// Future signUserInWithAuthCode(String authCode, context) async {
//   String url =
//       "https://lmma-linkedin.auth.us-east-1.amazoncognito.com/oauth2/authorize?response_type=code&identity_provider=Auth0-LinkedIn&client_id=17dek63mv7hiqt5th6as9ivasa" +
//           "$authCode" +
//           "&redirect_uri=https://example.com/";
//   final response = await http.post(url,
//       body: {}, headers: {'Content-Type': 'application/x-www-form-urlencoded'});
//   if (response.statusCode != 200) {
//     throw Exception("Received bad status code from Cognito for auth code:" +
//         response.statusCode.toString() +
//         "; body: " +
//         response.body);
//   }

//   final tokenData = json.decode(response.body);

//   final idToken = CognitoIdToken(tokenData['id_token']);
//   final accessToken = CognitoAccessToken(tokenData['access_token']);
//   final refreshToken = CognitoRefreshToken(tokenData['refresh_token']);
//   final session =
//       CognitoUserSession(idToken, accessToken, refreshToken: refreshToken);
//   session.refreshToken.getToken();
//   final user = CognitoUser(null, userPool, signInUserSession: session);
//   // Navigator.pushReplacement(
//   //   context,
//   //   MaterialPageRoute(builder: (context) => TestSignUp()),
//   // );
//   // NOTE: in order to get the email from the list of user attributes, make sure you select email in the list of
//   // attributes in Cognito and map it to the email field in the identity provider.
//   final attributes = await user.getUserAttributes();
//   for (CognitoUserAttribute attribute in attributes) {
//     if (attribute.getName() == "email") {
//       user.username = attribute.getValue();
//       break;
//     }
//   }
//   return user;
// }
