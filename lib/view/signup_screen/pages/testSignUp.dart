import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signin_screen/pages/login_screen.dart';

class TestSignUp extends StatefulWidget {
  @override
  _TestSignUpState createState() => _TestSignUpState();
}

void pom() async {
  await FlutterSession().set("isSignedIn", true);
}

class _TestSignUpState extends State<TestSignUp> {
  @override
  void initState() {
    // TODO: implement initState
    pom();
    super.initState();
  }

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
              await FlutterSession().set("isSignedIn", false);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginScreen(),
                ),
              );
            },
            child: Text("testni button za logout"),
          )
        ],
      ),
    );
  }
}
