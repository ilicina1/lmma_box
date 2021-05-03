import 'package:flutter/material.dart';

abstract class SignInInterface {
  Future signUserInWithAuthCode(String authCode, BuildContext context) async {}
}
