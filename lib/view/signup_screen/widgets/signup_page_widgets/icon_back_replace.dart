import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/pages/signup_page.dart';

class IconBackReplace extends StatelessWidget {
  const IconBackReplace({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 40,
      child: RawMaterialButton(
          elevation: 0,
          fillColor: Color(0xffF9F9F9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 15.0,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => SignUpPage(),
              ),
            );
          }),
    );
  }
}
