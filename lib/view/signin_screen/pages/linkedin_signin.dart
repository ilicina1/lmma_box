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
        // String code =
        //     request.url.substring("https://example.com/?code=".length);
        // await signUserInWithAuthCode(code);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TestSignUp()),
        );
        return NavigationDecision.prevent;
      }
      return NavigationDecision.navigate;
    },
    gestureNavigationEnabled: true,
  );
}
