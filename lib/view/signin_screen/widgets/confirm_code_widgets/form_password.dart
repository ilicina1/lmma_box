import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/viewModel/validate_password_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:lmma_box/utils/style/styles.dart';

class PasswordForm extends StatefulWidget {
  var _scaffoldKey;
  PasswordForm(this._scaffoldKey);
  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  var pom = false;

  @override
  Widget build(BuildContext context) {
    var controllers = context.watch<FormSignInNotifier>();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        if (visible) {
          setState(() {
            pom = true;
          });
        } else {
          setState(() {
            pom = false;
          });
        }
      },
    );

    return Padding(
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 30.0)
          : const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New password",
            style: MediaQuery.of(context).size.width < 470
                ? labelaStyleSmall
                : labelaStyle,
          ),
          TextFormField(
            focusNode: controllers.focusNode2,
            obscureText: controllers.obscureText,
            validator: (value) {
              if (ValidatePasswordModel(value, widget._scaffoldKey) == false)
                return "Please enter your password.";
              return null;
            },
            controller: controllers.passwordResetController,
            decoration: InputDecoration(
              suffix: InkWell(
                onTap: pom == false
                    ? controllers.togglePasswordViewInVisible
                    : controllers.togglePasswordViewVisible,
                child: controllers.obscureText
                    ? Icon(
                        Icons.visibility,
                        color: Color(0xFF8B8B8B),
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: Color(0xFF8B8B8B),
                      ),
              ),
              hintText: 'Enter your new password',
              hintStyle: hintStyle,
              focusedBorder: focused,
              border: border,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
// class PasswordForm extends StatelessWidget {
//   var _scaffoldKey;
//   var pom = false;
//   PasswordForm(this._scaffoldKey);
//   @override
//   Widget build(BuildContext context) {
//     var controllers = context.watch<FormSignInNotifier>();

//     KeyboardVisibilityNotification().addNewListener(
//       onChange: (bool visible) {
//         if (visible) {
//           pom = true;
//         } else {
//           pom = false;
//         }
//         print("ovo je pom $pom");
//       },
//     );

//     return Padding(
//       padding: MediaQuery.of(context).size.width < 380
//           ? const EdgeInsets.only(top: 30.0)
//           : const EdgeInsets.only(top: 30.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "New password",
//             style: MediaQuery.of(context).size.width < 470
//                 ? labelaStyleSmall
//                 : labelaStyle,
//           ),
//           TextFormField(
//             obscureText: controllers.obscureText,
//             validator: (value) {
//               if (ValidatePasswordModel(value, _scaffoldKey) == false)
//                 return "Please enter your password.";
//               return null;
//             },
//             controller: controllers.passwordResetController,
//             decoration: InputDecoration(
//               suffix: InkWell(
//                 onTap: pom == false
//                     ? controllers.togglePasswordViewInVisible
//                     : controllers.togglePasswordViewVisible,
//                 child: controllers.obscureText
//                     ? Icon(
//                         Icons.visibility,
//                         color: Color(0xFF8B8B8B),
//                       )
//                     : Icon(
//                         Icons.visibility_off,
//                         color: Color(0xFF8B8B8B),
//                       ),
//               ),
//               hintText: 'Enter your new password',
//               hintStyle: hintStyle,
//               focusedBorder: focused,
//               border: border,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
