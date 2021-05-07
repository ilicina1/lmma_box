import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/description_text.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';

class HeaderTextThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.fromLTRB(50, 0, 50, 0)
          : const EdgeInsets.fromLTRB(50, 80, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget("Some lmma box text").getTextWidget("title"),
          DescriptionText(),
        ],
      ),
    );
  }
}
