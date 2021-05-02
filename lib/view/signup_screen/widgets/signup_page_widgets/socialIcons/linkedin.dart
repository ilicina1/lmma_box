import 'package:flutter/material.dart';
import 'package:linkedin_login/linkedin_login.dart';
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => LinkedInUserWidget(
                    appBar: AppBar(
                      title: Text('OAuth User'),
                    ),
                    destroySession: logoutUser,
                    redirectUrl: "https://www.linkedin.com",
                    clientId: "78uwgu4sktq28c",
                    clientSecret: "L9sjGdOuCpTNEck9",
                    projection: [
                      ProjectionParameters.id,
                      ProjectionParameters.localizedFirstName,
                      ProjectionParameters.localizedLastName,
                      ProjectionParameters.firstName,
                      ProjectionParameters.lastName,
                      ProjectionParameters.profilePicture,
                    ],
                    onGetUserProfile: (LinkedInUserModel linkedInUser) async {
                      user = UserObject(
                        firstName: linkedInUser?.firstName?.localized?.label,
                        lastName: linkedInUser?.lastName?.localized?.label,
                        email: linkedInUser
                            ?.email?.elements[0]?.handleDeep?.emailAddress,
                        profileImageUrl: linkedInUser
                            ?.profilePicture
                            ?.displayImageContent
                            ?.elements[0]
                            ?.identifiers[0]
                            ?.identifier,
                      );
                      await linkedinSignIn(user.firstName, user.email);
                      // final userPool = new CognitoUserPool(
                      //     "us-east-1_aSrVrEGDM", COGNITO_CLIENT_ID);
                      // final userFinal = new CognitoUser(null, userPool);
                      // userFinal.username = user.email;
                      //  signUserInWithAuthCode();
                      Navigator.pop(context);
                    },
                  ),
                  fullscreenDialog: true,
                ),
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
