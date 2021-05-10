import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/facebook.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/google.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/linkedin.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/twitter.dart';

Widget SignUpSocialRow(context) {
  return Padding(
    padding: MediaQuery.of(context).size.width < 380
        ? const EdgeInsets.only(top: 10)
        : const EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FacebookIcon(context),
        GoogleIcon(context),
        TwitterIcon(context),
        LinkedinIcon(context),
      ],
    ),
  );
}
