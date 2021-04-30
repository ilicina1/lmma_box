import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class PinContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PinCodeTextField(
            controller: controllers.confirmationCodeController,
            appContext: context,
            length: 6,
            onChanged: (value) {
              if (value.length == 6) {
                controllers.submitResetCode(context);
              }
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
