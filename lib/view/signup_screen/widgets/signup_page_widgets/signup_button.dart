import 'package:flutter/material.dart';
import 'package:lmma_box/providers/form_notifier.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';
import 'package:provider/provider.dart';

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
    var controllers = context.watch<FormNotifier>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
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
            'Sign Up',
            style: signUpText,
          ),
          onPressed: () => controllers.createAccountOnPressed(
              context, widget._formKey, widget._scaffoldKey),
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
