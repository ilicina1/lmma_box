import 'package:flutter/material.dart';
import 'package:lmma_box/services/signinService.dart';

class SignInViewModel {
  signUserInWithAuthCode(String authCode, BuildContext context) {
    return SignInService().signUserInWithAuthCode(authCode, context);
  }
}
