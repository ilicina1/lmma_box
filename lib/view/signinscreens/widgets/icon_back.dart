import 'package:flutter/material.dart';

class IconBack extends StatelessWidget {
  const IconBack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.black38,
      onPressed: () => Navigator.pop(context, false),
    );
  }
}
