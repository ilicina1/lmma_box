import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:provider/provider.dart';

class WelcomeScreenPagination extends StatefulWidget {
  @override
  _WelcomeScreenPaginationState createState() =>
      _WelcomeScreenPaginationState();
}

class _WelcomeScreenPaginationState extends State<WelcomeScreenPagination> {
  var children = <Widget>[];
  @override
  void initState() {
    children = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 4; i++) {
      if (i == 0) {
        children = [];
      }
      children.add(
        Opacity(
          opacity: (Provider.of<ScreenScrollProvider>(context).page == i)
              ? 1.0
              : 0.6,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
            decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width:
                (Provider.of<ScreenScrollProvider>(context).page == i) ? 11 : 7,
            height:
                (Provider.of<ScreenScrollProvider>(context).page == i) ? 11 : 7,
          ),
        ),
      );
    }
    return Container(
      margin: EdgeInsets.fromLTRB(50, 0, 50, 47),
      child: Row(children: children),
    );
  }
}
