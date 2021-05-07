import 'package:flutter/material.dart';
import 'package:lmma_box/services/googlesigninService.dart';

class GoogleSignInViewModel {
  onGoogleSignIn(BuildContext context) {
    return GoogleSignInService().onGoogleSignIn(context);
  }
}
