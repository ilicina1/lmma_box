import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/app_bar_signup.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/form_list.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/login_rich_text.dart';

class SignUpMain extends StatefulWidget {
  var _scaffoldKey;
  SignUpMain(this._scaffoldKey);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SafeArea(
            child: AppBarSignUp(context),
          ),
          FormList(widget._scaffoldKey),
          Spacer(),
          Container(
            height: 40,
            child: LoginRichText(context),
          ),
        ],
      ),
    );
  }
}
