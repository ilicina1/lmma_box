import 'package:flutter/material.dart';
import 'package:lmma_box/services/signin_service.dart';

class SignInViewModel {
  signUserInWithAuthCode(String authCode, BuildContext context) {
    return SignInService().signUserInWithAuthCode(authCode, context);
  }
}
