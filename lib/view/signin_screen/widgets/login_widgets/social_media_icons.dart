import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/pages/googlefacebook-signin.dart';
import 'package:lmma_box/view/signin_screen/pages/linkedin_signin.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/facebook.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/google.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/instagram.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/linkedin.dart';
import 'package:lmma_box/view/signup_screen/widgets/signup_page_widgets/socialIcons/twitter.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
