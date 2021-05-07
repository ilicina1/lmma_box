import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

// ignore: must_be_immutable
class ButtonReset extends StatelessWidget {
  var _formKey;
  ButtonReset(this._formKey);

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width < 380
          ? MediaQuery.of(context).size.height * 0.05
          : 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            primary: Color(0xFFFFDF36)),
        child: Text(
          'Send confirmation code',
          style: twoButtonsStyle,
        ),
        onPressed: () {
          _formKey.currentState.validate()
              ? controllers.resetPassword(context)
              : print("processing data");
        },
      ),
    );
  }
}
