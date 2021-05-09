import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class PinContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();
    TextEditingController textEditingController = TextEditingController();
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PinCodeTextField(
            controller: textEditingController,
            appContext: context,
            length: 6,
            onChanged: (value) {
              controllers.setConfController(value);
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
