import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signin_screen/pages/login_screen.dart';

// ignore: must_be_immutable
class TestSignUp extends StatefulWidget {
  dynamic mail;
  TestSignUp(this.mail);
  @override
  _TestSignUpState createState() => _TestSignUpState();
}

class _TestSignUpState extends State<TestSignUp> {
  void pom() async {
    await FlutterSession().set("mail", widget.mail);
    await FlutterSession().set("isSignedIn", true);
  }

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
          Text("Uspjesan Sign Up ${widget.mail}"),
          TextButton(
            onPressed: () async {
              await FlutterSession().set("isSignedIn", false);
              await FlutterSession().set("mail", false);
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
