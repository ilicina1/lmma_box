import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/container_colored.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/form_password.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/forma_mail.dart';

// ignore: must_be_immutable
class MainContainer extends StatelessWidget {
  var _scaffoldKey;
  var _formKey;
  MainContainer(this._scaffoldKey, this._formKey);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FormaEmail(),
          PasswordForm(_scaffoldKey),
          SizedBox(
            height: 20,
          ),
          ContainerColored(_formKey),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
