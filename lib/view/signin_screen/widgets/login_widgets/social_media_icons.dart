import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(

            icon: Image.asset('assets/images/facebookLog.png',height: 24,),
            onPressed: () {}),
        IconButton(
            icon: Image.asset('assets/images/googleLog.png',height: 24), onPressed: () {}),
        IconButton(
            icon: Image.asset('assets/images/twitterLog.png',height: 24),
            color: Colors.lightBlue,
            onPressed: () {}),
        IconButton(
            icon: Image.asset('assets/images/linkedinLog.png',height: 24),
            color: Colors.blue[700],
            onPressed: () {}),
        IconButton(
            icon: Image.asset('assets/images/instagramLog.png',height: 24),
            onPressed: () {}),
      ],
    );
  }
}
