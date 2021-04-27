import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget nextButton(context, pageController, screenScroll) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              primary: Colors.amber[400]),
          child: Text(
            'Next',
            style: TextStyle(fontSize: 20, color: Colors.grey[800]),
          ),
          onPressed: () {
            // if (_pageController.hasClients) {
            // pageController.animateToPage(
            //   2,
            //   duration: (const Duration(milliseconds: 400)),
            //   curve: Curves.easeInOut,
            // );
          }
          //},
          ),
    ),
  );
}