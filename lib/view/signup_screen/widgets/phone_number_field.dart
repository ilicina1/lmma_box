import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class PhoneNumberField extends StatefulWidget {
  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone number",
            style: labelaStyle,
          ),
          InternationalPhoneInput(
            initialSelection: "+387",
            decoration: InputDecoration(
              hintText: 'Ex: 3452323423',
              border: border,
            ),
            hintText: "Ex: 3452323423",
            showCountryFlags: true,
          ),
        ],
      ),
    );
  }
}
