import 'package:flutter/material.dart';
import 'package:lmma_box/interface/facebook_signin_interface.dart';
import 'package:lmma_box/view/signin_screen/pages/google_facebook_signin.dart';

class FacebookSignInService implements FacebookSignInInterface {
  @override
  void facebookLogin(BuildContext context) async {
    String idendity_provider = "Facebook";
    // web_view_enable=1;
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => WebViewGoogleFacebook(idendity_provider)),
    );
  }
}
