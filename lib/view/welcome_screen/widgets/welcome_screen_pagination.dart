import 'package:flutter/material.dart';

class WelcomeScreenPagination extends StatefulWidget {
  final int page;
  WelcomeScreenPagination({this.page});
  @override
  _WelcomeScreenPaginationState createState() =>
      _WelcomeScreenPaginationState();
}

class _WelcomeScreenPaginationState extends State<WelcomeScreenPagination> {
  int page;
  _WelcomeScreenPaginationState({this.page});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 0, 50, 47),
      child: Row(
        children: [
          Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: 7,
              height: 7,
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: 7,
              height: 7,
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: 7,
              height: 7,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: 11,
            height: 11,
          )
        ],
      ),
    );
  }
}
