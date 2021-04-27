import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/second_page_widgets/description_text.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/set_text_welcome_screen.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget("Some Description text").getTextWidget('title'),
          DescriptionText(),
        ],
      ),
    );
  }
}
