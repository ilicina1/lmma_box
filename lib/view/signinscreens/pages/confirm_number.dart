import 'package:flutter/material.dart';
import 'package:lmma_box/utils/shared/size_config.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:lmma_box/view/signinscreens/widgets/info_text.dart';
import 'package:lmma_box/view/signinscreens/widgets/pin_container.dart';
import 'package:lmma_box/view/signinscreens/widgets/potvrda.dart';
import 'package:lmma_box/view/signinscreens/widgets/rich_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
