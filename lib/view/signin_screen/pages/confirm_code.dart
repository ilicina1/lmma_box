import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/pin_container2.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/text_rich.dart';
import 'package:lmma_box/view/signup_screen/widgets/confirm_number_widgets/potvrda.dart';

class ConfirmCodePage extends StatelessWidget {
  // var _formKey;
  // var _scaffoldKey;
  // ConfirmCodePage(this._formKey, this._scaffoldKey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text(
          "Confirm code",
          style: confirmHeader,
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
                Text("Enter a 6-digit code Lmma just sent to +97123423523"),
                PinContainer2(),
                TextRich(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
