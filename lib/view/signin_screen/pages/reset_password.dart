import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/icon_back.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/main_container.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/text_info.dart';

class ResetPasswordPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconBack(),
        title: Text(
          "Reset password",
          style: headerNewText,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60),
        color: Colors.white,
        child: ListView(
          children: [
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
                    MainContainer(_scaffoldKey, _formKey),
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
