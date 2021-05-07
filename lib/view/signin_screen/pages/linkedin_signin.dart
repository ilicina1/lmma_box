import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lmma_box/viewModel/signin_viewModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

final Completer<WebViewController> _webViewController =
    Completer<WebViewController>();
Widget getWebView(context) {
  var url =
      "https://meelz.auth.us-east-1.amazoncognito.com/oauth2/authorize?response_type=code&identity_provider=LinkedIn&client_id=31goilt5aaqpbo84acs1abfket&connection=linkedin&redirect_uri=http://localhost:4200/ouath2/idpresponse&scope=email+openid+profile+aws.cognito.signin.user.admin";
  return WebView(
    initialUrl: url,
    userAgent: 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) ' +
        'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36',
    javascriptMode: JavascriptMode.unrestricted,
    onWebViewCreated: (WebViewController webViewController) {
      _webViewController.complete(webViewController);
      webViewController.clearCache();
      final cookieManager = CookieManager();
      cookieManager.clearCookies();
    },
    navigationDelegate: (NavigationRequest request) async {
      if (request.url
          .startsWith("http://localhost:4200/ouath2/idpresponse?code=")) {
        String code = request.url
            .substring("http://localhost:4200/ouath2/idpresponse?code=".length);
        SignInViewModel().signUserInWithAuthCode(code, context);

        return NavigationDecision.prevent;
      }
      return NavigationDecision.navigate;
    },
    gestureNavigationEnabled: true,
  );
}
