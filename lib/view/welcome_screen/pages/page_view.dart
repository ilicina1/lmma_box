import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/pages/fourth_page.dart';

class PageScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        FourthPage()
      ],
    );
  }
}