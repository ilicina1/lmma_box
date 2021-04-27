import 'package:flutter/material.dart';

class WelcomeScreenPagination extends StatefulWidget {
  final int page;
  WelcomeScreenPagination({this.page});
  @override
  _WelcomeScreenPaginationState createState() =>
      _WelcomeScreenPaginationState();
}

class _WelcomeScreenPaginationState extends State<WelcomeScreenPagination> {
  final children = <Widget>[];
  @override
  void initState() {
    super.initState();
    for (var i = 1; i < 5; i++) {
      children.add(
        Opacity(
          opacity: (widget.page == i) ? 1.0 : 0.6,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
            decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: (widget.page == i) ? 11 : 7,
            height: (widget.page == i) ? 11 : 7,
          ),
        ),
      );
    }
    
  }
  @override
  Widget build(BuildContext context) {
    print(widget.page);  

    return Container(
      margin: EdgeInsets.fromLTRB(50, 0, 50, 47),
      child: Row(children: children),
    );
  }
}
