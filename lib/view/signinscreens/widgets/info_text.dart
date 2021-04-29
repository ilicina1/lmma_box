import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "Enter the 4-digit code Lmmaa just sent to +971 23423523",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
