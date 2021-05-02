import 'package:flutter/material.dart';
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:lmma_box/services/linkedin_signin.dart';

Widget linkedinIcon(context) {
  UserObject user;
  bool logoutUser = false;

  return Container(
    height: MediaQuery.of(context).size.width < 380 ? 18 : 24,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () {}, // handle your image tap here
            child: Image(
              image: AssetImage('assets/images/linkedinLog.png'),
            ),
          ),
        ),
      ],
    ),
  );
}

class UserObject {
  String firstName, lastName, email, profileImageUrl;

  UserObject({this.firstName, this.lastName, this.email, this.profileImageUrl});
}
