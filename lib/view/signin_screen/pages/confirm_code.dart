import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/pin_container2.dart';
import 'package:lmma_box/view/signin_screen/widgets/confirm_code_widgets/text_rich.dart';

class ConfirmCodePage extends StatelessWidget {
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
