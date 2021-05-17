import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/button_confirm.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/form_confirm_password.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/form_password.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/pin_container2.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/text_rich.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/app_bar_resetpw.dart';

class ConfirmCodePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppBarWithIconBack(context, "Confirn code"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Enter a 6-digit code Lmma just sent to you"),
                  PinContainer2(),
                  PasswordForm(_scaffoldKey),
                  PasswordConfirmForm(_scaffoldKey),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: ButtonConfirm(_formKey, _scaffoldKey),
                  ),
                  // TextRich(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
