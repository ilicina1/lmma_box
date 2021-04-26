import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/next_button_style.dart';
import 'package:lmma_box/utils/style/next_page_text_style.dart';

Widget nextPageButton() {
  return SizedBox(
    height: 45,
    width: 275,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        'Next page',
        style: nextPageTextStyle(),
      ),
      style: nextButtonStyle(),
    ),
  );
}
