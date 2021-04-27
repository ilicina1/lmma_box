import 'package:flutter/material.dart';

Widget previousButton() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
    child: Container(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.amber[400], width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.white,
        ),
        child: Text(
          'Previous',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey[800],
          ),
        ),
        onPressed: () {},
      ),
    ),
  );
}
