import 'package:flutter/material.dart';
import 'package:lmma_box/services/facebook_signin_service.dart';

class FacebookSignInViewModel {
  facebookLogin(BuildContext context) {
    return FacebookSignInService().facebookLogin(context);
  }
}
