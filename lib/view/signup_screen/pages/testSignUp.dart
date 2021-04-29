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
        children: [Text("Uspjesan Sign Up")],
      ),
    );
  }
}
