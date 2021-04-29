import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/form_list.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/app_bar_widget.dart';

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
              child: appBarWidget(context),
            ),
            FormList(),
          ],
        ),
      ),
    );
  }
}
