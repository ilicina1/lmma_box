import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/appBarSignUp.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/form_list.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SafeArea(
              child: appBarSignUp(context),
            ),
            FormList(),
          ],
        ),
      ),
    );
  }
}
