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
          Text('New to Lmmaa?'),
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
              style: TextStyle(color: Color(0xFF1CBD8D)),
              //TO DO ovdje prebaci na SignUpPage
            ),
          )
        ],
      ),
    );
  }
}
