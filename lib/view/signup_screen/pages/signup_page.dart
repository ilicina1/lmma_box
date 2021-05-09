import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/app_bar_signup.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/form_list.dart';

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
      body: Container(
        child: Column(
          children: [
            SafeArea(
              child: AppBarSignUp(context),
            ),
            FormList(_scaffoldKey),
          ],
        ),
      ),
    );
  }
}
