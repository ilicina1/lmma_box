import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/pages/googlefacebook-signin.dart';

Widget googleIcon(context) {
  return Container(
    height: MediaQuery.of(context).size.width < 380 ? 18 : 24,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WebViewGoogleFacebook("Google")),
              );
            }, // handle your image tap here
            child: Image(
              image: AssetImage('assets/images/googleLog.png'),
            ),
          ),
        ),
      ],
    ),
  );
}
