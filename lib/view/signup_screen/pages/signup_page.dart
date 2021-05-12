import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_main.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: FlutterSession().get('mail'),
        builder: (context, snapshot) {
          print(snapshot.data);
          return snapshot.data != false && snapshot.data != null
              ? TestSignUp(snapshot.data)
              : SignUpMain(_scaffoldKey);
        },
      ),
    );
  }
}
