import 'package:flutter/material.dart';
import 'package:lmma_box/view/privacy_policy_screen/widgets/privacy_policy.dart';
import 'package:lmma_box/view/privacy_policy_screen/widgets/terms_of_use.dart';

// ignore: must_be_immutable
class PrivacyPolicyLinkAndTermsOfService extends StatelessWidget {
  String idendity_provider;
  PrivacyPolicyLinkAndTermsOfService(this.idendity_provider);
  @override
  Widget build(BuildContext context) {
    if (idendity_provider == "privacy") {
      return PrivacyContainer();
    } else {
      return TermsContainer();
    }
  }
}
