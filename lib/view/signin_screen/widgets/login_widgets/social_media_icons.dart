import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/pages/googlefacebook-signin.dart';
import 'package:lmma_box/view/signin_screen/pages/linkedin_signin.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Image.asset(
              'assets/images/facebookLog.png',
              height: 24,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => WebViewGoogleFacebook("Facebook")),
              );
            }),
        IconButton(
            icon: Image.asset('assets/images/googleLog.png', height: 24),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => WebViewGoogleFacebook("Google")),
              );
            }),
        IconButton(
            icon: Image.asset('assets/images/twitterLog.png', height: 24),
            color: Colors.lightBlue,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => getWebView(context)),
              );
            }),
        IconButton(
            icon: Image.asset('assets/images/linkedinLog.png', height: 24),
            color: Colors.blue[700],
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => getWebView(context)),
              );
            }),
        IconButton(
            icon: Image.asset('assets/images/instagramLog.png', height: 24),
            onPressed: () {}),
      ],
    );
  }
}
