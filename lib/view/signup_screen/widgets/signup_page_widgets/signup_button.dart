import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/utils/style/welcome_screen_text_styles.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class signUpButton extends StatefulWidget {
  var _formKey;
  var _scaffoldKey;
  signUpButton(this._formKey, this._scaffoldKey);
  @override
  _signUpButtonState createState() => _signUpButtonState();
}

class _signUpButtonState extends State<signUpButton> {
  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignUpNotifier>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              primary: Color(0xFFFFDF36)),
          child: Text(
            'Sign Up',
            style: twoButtonsStyle,
          ),
          onPressed: () => widget._formKey.currentState.validate()
              ? controllers.createAccountOnPressed(
                  context, widget._formKey, widget._scaffoldKey)
              : print("processing data"),
        ),
      ),
    );
  }
}

// Widget signUpButton(context) {
// var controllers = context.watch<FormNotifier>();
// return Padding(
//   padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//   child: Container(
//     width: double.infinity,
//     height: MediaQuery.of(context).size.width < 380
//         ? MediaQuery.of(context).size.height * 0.05
//         : 45,
//     child: ElevatedButton(
//       style: ElevatedButton.styleFrom(
//           elevation: 0.0,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           primary: Color(0xFFFFDF36)),
//       child: Text(
//         'Sign Up',
//         style: signUpText,
//       ),
//       onPressed: () => controllers._createAccountOnPressed(context),
//     ),
//   ),
// );
//}
