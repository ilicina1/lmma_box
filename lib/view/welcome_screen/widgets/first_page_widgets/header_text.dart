import 'package:flutter/material.dart';
import 'package:lmma_box/utils/styles/styles.dart';
import 'package:lmma_box/view/welcome_screen/widgets/first_page_widgets/description_text.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Some",
            style: headerText,
          ),
          Text(
            "Description text",
            style: headerText,
          ),
          DescriptionText(),
        ],
      ),
    );
  }
}
