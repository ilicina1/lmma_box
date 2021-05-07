import 'package:flutter/material.dart';
import 'package:lmma_box/interface/googlesinginInterface.dart';
import 'package:lmma_box/view/signin_screen/pages/googlefacebook-signin.dart';

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
