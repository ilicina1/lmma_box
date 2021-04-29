import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/facebook.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/google.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/instagram.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/linkedin.dart';
import 'package:lmma_box/view/signup_screen/widgets/socialIcons/twitter.dart';

Widget signUpSocialRow() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        facebookIcon(),
        googleIcon(),
        twitterIcon(),
        linkedinIcon(),
        instagramIcon(),
      ],
    ),
  );
}
