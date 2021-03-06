import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';

class LoginDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          child: Divider(
            height: 2,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
        ),
        Text(
          'or',
          style: dividerText,
        ),
        Container(
          width: 150,
          child: Divider(
            height: 2,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
        )
      ],
    );
  }
}
