import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/pages/google_facebook_signin.dart';

Widget FacebookIcon(context) {
  return Container(
    height: MediaQuery.of(context).size.width < 380 ? 18 : 24,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WebViewGoogleFacebook("Facebook")),
              );
            }, // handle your image tap here
            child: Image(
              image: AssetImage('assets/images/facebookLog.png'),
            ),
          ),
        ),
      ],
    ),
  );
}
