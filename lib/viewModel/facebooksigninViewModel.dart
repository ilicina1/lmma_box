import 'package:flutter/material.dart';
import 'package:lmma_box/services/facebooksigninService.dart';

class FacebookSignInViewModel {
  facebookLogin(BuildContext context) {
    return FacebookSignInService().facebookLogin(context);
  }
}