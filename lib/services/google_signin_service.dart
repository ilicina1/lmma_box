import 'package:flutter/material.dart';
import 'package:lmma_box/interface/google_signin_interface.dart';
import 'package:lmma_box/view/signin_screen/pages/google_facebook_signin.dart';

class GoogleSignInService implements GoogleSignInInterface {
  @override
  void onGoogleSignIn(BuildContext context) async {
    String idendity_provider = "Google";
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => WebViewGoogleFacebook(idendity_provider)),
    );
  }
}
