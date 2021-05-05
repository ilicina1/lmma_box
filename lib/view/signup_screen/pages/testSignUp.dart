import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter/material.dart';

class TestSignUp extends StatefulWidget {
  @override
  _TestSignUpState createState() => _TestSignUpState();
}

class _TestSignUpState extends State<TestSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Uspjesan Sign Up"),
          TextButton(
            onPressed: () async {
              // final userPool = CognitoUserPool(
              //     'us-east-1_HkX5v5uaY', '31goilt5aaqpbo84acs1abfket');
              // final cognitoUser =
              //     CognitoUser('ilhan.licina@outlook.com', userPool);
              // // final authDetails = AuthenticationDetails(
              // //   username: 'ilhan_cs@hotmail.com',
              // //   // password: 'Manijaci1921!',
              // // );
              // // CognitoUserSession session;
              // // session = await cognitoUser.authenticateUser(authDetails);
              // // print("${session.getAccessToken().getJwtToken()} print neki");
              // List<CognitoUserAttribute> attributes;
              // try {
              //   attributes = await cognitoUser.getUserAttributes();
              // } catch (e) {
              //   print(e);
              // }
              // attributes.forEach((attribute) {
              //   print(
              //       'attribute ${attribute.getName()} has value ${attribute.getValue()}');
              // });
              // // print(cognitoUser.getUserAttributes().

              // // userPool.getCurrentUser();
              // // var cognitoUser = await userPool.getCurrentUser();
              // // print("${cognitoUser.username} prvi print");
              // // print("${cognitoUser} drugi print");
              // // print("${cognitoUser.getUsername()} treci print");
            },
            child: Text("testni button za logout"),
          )
        ],
      ),
    );
  }
}
