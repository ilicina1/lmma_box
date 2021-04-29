import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/facebook.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/google.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/instagram.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/linkedin.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/twitter.dart';

Widget signUpSocialRow(context) {
  return Padding(
    padding: MediaQuery.of(context).size.width < 380
        ? const EdgeInsets.only(top: 10)
        : const EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        facebookIcon(context),
        googleIcon(context),
        twitterIcon(context),
        linkedinIcon(context),
        instagramIcon(context),
      ],
    ),
  );
}
