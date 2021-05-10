import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/app_bar_resetpw.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/main_container.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/text_info.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/app_bar_signup.dart';

class ResetPasswordPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppBarResetpw(context),
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          TextInfo()
                        ],
                      ),
                    ),
                    MainContainer(_formKey),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
