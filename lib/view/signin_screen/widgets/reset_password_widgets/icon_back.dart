import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/view/signup_screen/pages/signup_page.dart';
import 'package:provider/provider.dart';

class IconBack extends StatelessWidget {
  const IconBack({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();
    return Container(
      width: 45,
      height: 40,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Color(0xffF9F9F9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 18.0,
        ),
        onPressed: () => Navigator.pop(context, true),
      ),
    );
  }
}
