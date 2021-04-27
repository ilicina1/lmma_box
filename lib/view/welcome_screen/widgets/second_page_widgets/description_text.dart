import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Delivering quality home cooking to your door",
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 20,
        ),
      ),
    );
  }
}
