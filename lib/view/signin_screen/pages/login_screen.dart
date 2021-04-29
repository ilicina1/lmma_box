import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/bottom_text.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/divider.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/login_button.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/login_form.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/remember_button.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/social_media_icons.dart';
import 'package:lmma_box/view/signin_screen/widgets/login_widgets/welcome_text.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/app_bar_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(child: appBarWidget(context)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(
              children: [WelcomeText(), LoginForm(_formKey)],
            ),
          ),
          RememberButton(rememberMe),
          LoginButton(_formKey),
          LoginDivider(),
          SocialMediaIcons(),
          Spacer(),
          BottomText()
        ],
      ),
    );
  }
}
