import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/pages/third_page.dart';

Widget nextButton(context) {
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdPage()),
          );
        },
      ),
    ),
  );
}
