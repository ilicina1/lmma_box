import 'package:flutter/material.dart';
import 'package:lmma_box/view/privacy_policy_screen/widgets/privacy_policy.dart';
import 'package:lmma_box/view/privacy_policy_screen/widgets/terms_of_use.dart';

Widget PrivacyPolicyLinkAndTermsOfService(String identifier) {
  if (identifier == "privacy") {
    return PrivacyPolicy();
  } else {
    return TermsOfUse();
  }
}
