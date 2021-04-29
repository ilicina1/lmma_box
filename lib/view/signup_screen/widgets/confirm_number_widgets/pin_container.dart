import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_notifier.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class PinContainer extends StatelessWidget {
  // const PinContainer({
  //   Key key,
  // }) : super(key: key);
  var _formKey;
  var _scaffoldKey;
  PinContainer(this._formKey, this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormNotifier>();

    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PinCodeTextField(
            controller: controllers.confirmController,
            appContext: context,
            length: 6,
            onChanged: (value) {
              if (value.length == 6) {
                controllers.submitCode(context, _formKey, _scaffoldKey);
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
