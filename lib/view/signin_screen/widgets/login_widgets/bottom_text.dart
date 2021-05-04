import 'package:flutter/material.dart';
import 'package:lmma_box/view/signup_screen/pages/signup_page.dart';

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('New to Lmmaa?',
              style: TextStyle(
                  color: Color(0xff373737),
                  fontSize: 16,
                  fontFamily: "Averta CY",
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Text(
              'Sign up',
              style: TextStyle(
                  color: Color(0xff1CBD8D),
                  fontSize: 16,
                  fontFamily: "Averta CY",
                  fontWeight: FontWeight.w400),
              //TO DO ovdje prebaci na SignUpPage
            ),
          )
        ],
      ),
    );
  }
}
