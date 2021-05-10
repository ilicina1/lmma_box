import 'package:flutter/material.dart';
import 'package:lmma_box/view/signin_screen/pages/login_screen.dart';

Widget LoginRichText(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Already have an account? '),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Log in',
                  style: TextStyle(color: Color(0xFF1CBD8D)),
                  //TO DO ovdje prebaci na SignUpPage
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
