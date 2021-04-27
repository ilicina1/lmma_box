import 'package:flutter/material.dart';
import 'package:lmma_box/view/welcome_screen/widgets/set_text_welcome_screen.dart';

class DescriptionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextWidget("Delivering quality home cooking to your door")
          .getTextWidget('details'),
    );
  }
}
