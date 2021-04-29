import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/icon_back.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/main_container.dart';
import 'package:lmma_box/view/signin_screen/widgets/reset_password_widgets/text_info.dart';


class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconBack(),
        title: Text(
          "Reset password",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            fontFamily: "Averta",
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
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
                MainContainer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
