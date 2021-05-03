import 'package:flutter/material.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lmma_box/services/linkedin_signin.dart';

final FlutterAppAuth appAuth = FlutterAppAuth();
final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

Widget linkedinIcon(context) {
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
                MaterialPageRoute(builder: (context) => getWebView(context)),
              );
            }, // handle your image tap here
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
