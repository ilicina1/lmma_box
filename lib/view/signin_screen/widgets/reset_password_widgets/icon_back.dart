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

    return IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded),
        color: Color(0xFF373737),
        onPressed: () {
          controllers.emailController.text = "";
          controllers.passwordController.text = "";
          Navigator.pop(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
        });
  }
}
