import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/button_confirm.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/form_confirm_password.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/form_password.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/pin_container2.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/text_rich.dart';

class ConfirmCodePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, true),
        ),
        title: Text(
          "Confirm code",
          style: confirmHeader,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.6,
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
              ButtonConfirm(_formKey, _scaffoldKey),
              TextRich(),
            ],
          ),
        ),
      ),
    );
  }
}
