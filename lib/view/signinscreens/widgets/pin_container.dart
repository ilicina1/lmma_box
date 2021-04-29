import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinContainer extends StatelessWidget {
  const PinContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PinCodeTextField(
            appContext: context,
            length: 4,
            onChanged: (value) {},
            keyboardType: TextInputType.number,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: Colors.black38,
              fieldWidth: 80,
            ),
          ),
        ],
      ),
    );
  }
}
