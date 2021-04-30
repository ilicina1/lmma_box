import 'package:flutter/material.dart';
import 'package:lmma_box/services/facebooksigninService.dart';
import 'package:lmma_box/services/googlesigninService.dart';

class FacebookSignInViewModel {
  facebookLogin(BuildContext context) {
    return FacebookSignInService().facebookLogin(context);
  }
}
