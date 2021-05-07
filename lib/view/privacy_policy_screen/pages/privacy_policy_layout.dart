import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lmma_box/utils/shared/size_config.dart';
import 'package:lmma_box/view/privacy_policy_screen/widgets/privacy_policy.dart';
import 'package:lmma_box/view/privacy_policy_screen/widgets/terms_of_use.dart';

Widget privacyPolicyLinkAndTermsOfService(String identifier) {
  if (identifier == "privacy") {
    return privacyPolicy();
  } else {
    return termsOfUse();
  }
}
