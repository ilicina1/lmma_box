import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/confirm_number_widgets/info_text.dart';
import 'package:lmma_box/view/signup_screen/widgets/confirm_number_widgets/pin_container.dart';
import 'package:lmma_box/view/signup_screen/widgets/confirm_number_widgets/potvrda.dart';
import 'package:lmma_box/view/signup_screen/widgets/confirm_number_widgets/rich_text.dart';

class ConfirmNumberPage extends StatelessWidget {
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
        title: PotvrdaDart(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[InfoText(), PinContainer(), TextRich()],
            )
          ],
        ),
      ),
    );
  }
}
