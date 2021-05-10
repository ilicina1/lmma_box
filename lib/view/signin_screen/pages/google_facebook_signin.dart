import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/shared/strings.dart';
import 'package:lmma_box/viewModel/signinViewModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebViewGoogleFacebook extends StatefulWidget {
  String idendity_provider;
  WebViewGoogleFacebook(this.idendity_provider);

  @override
  WebViewGoogleFacebookState createState() => WebViewGoogleFacebookState();
}

class WebViewGoogleFacebookState extends State<WebViewGoogleFacebook> {
  final Completer<WebViewController> _webViewController =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
  }

  final COGNITO_CLIENT_ID = cognitoKlijentId;
  final COGNITO_Pool_ID = cognitoPoolId;
  final COGNITO_POOL_URL = cognitoPoolURL;
  var web_view_enable = 0;

  Widget getWebView() {
    if (widget.idendity_provider == google) {
      widget.idendity_provider = google;
    } else {
      widget.idendity_provider = facebook;
    }
    var signin = 0;

    var url =
        "https://meelz.auth.us-east-1.amazoncognito.com/oauth2/authorize?identity_provider=" +
            widget.idendity_provider +
            "&redirect_uri=http://localhost:4200/ouath2/idpresponse&response_type=CODE&client_id=31goilt5aaqpbo84acs1abfket&scope=email+openid+profile+aws.cognito.signin.user.admin";

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
      navigationDelegate: (NavigationRequest request) {
        if (request.url
                .startsWith("http://localhost:4200/ouath2/idpresponse?code=") &&
            signin == 0) {
          String code = request.url.substring(
              "http://localhost:4200/ouath2/idpresponse?code=".length);
          SignInViewModel().signUserInWithAuthCode(code, context);

          signin = 1;
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
      gestureNavigationEnabled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
            appBar: AppBar(
                title: Text(widget.idendity_provider + " Authentication")),
            body: getWebView()));
  }
}
