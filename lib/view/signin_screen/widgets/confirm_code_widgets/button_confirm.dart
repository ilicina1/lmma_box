import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

// ignore: must_be_immutable
class ButtonConfirm extends StatelessWidget {
  var _formKey;
  var _scaffoldKey;
  ButtonConfirm(this._formKey, this._scaffoldKey);

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
          'Confirm new password',
          style: twoButtonsStyle,
        ),
        onPressed: () {
          _formKey.currentState.validate()
              ? controllers.submitResetCode(context, _scaffoldKey)
              : print("processing data");
        },
      ),
    );
  }
}
