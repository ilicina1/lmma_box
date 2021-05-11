import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_main.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/app_bar_signup.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/form_list.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/login_rich_text.dart';
import 'package:lmma_box/view/welcome_screen/pages/page_scroller.dart';

import '../widgets/signup_page_widgets/app_bar_signup.dart';

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
      resizeToAvoidBottomInset: false,
      body: FutureBuilder(
        future: FlutterSession().get('mail'),
        builder: (context, snapshot) {
          print(snapshot.data);
          return snapshot.data != false
              ? TestSignUp(snapshot.data)
              : SignUpMain(_scaffoldKey);
        },
      ),
    );
  }
}
