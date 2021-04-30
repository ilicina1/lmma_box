import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinContainer extends StatelessWidget {
  // var _formKey;
  // var _scaffoldKey;
  // PinContainer(this._formKey, this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PinCodeTextField(
            appContext: context,
            length: 6,
            onChanged: (value) {
              // if (value.length == 6) {
              //   controllers.submitCode(context, _formKey, _scaffoldKey);
              // }
            },
            keyboardType: TextInputType.number,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              inactiveColor: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
