import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/lmmaa_Box_Icon.dart';
import 'package:lmma_box/view/welcome_screen/widgets/skip_text_button.dart';

Widget welcomeAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: lmmaaBoxIcon(),
    actions: <Widget>[skipTextButtonWidget()],
  );
}
