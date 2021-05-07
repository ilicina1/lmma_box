import 'package:flutter/material.dart';
import 'package:lmma_box/services/google_signin_service.dart';

class GoogleSignInViewModel {
  onGoogleSignIn(BuildContext context) {
    return GoogleSignInService().onGoogleSignIn(context);
  }
}
