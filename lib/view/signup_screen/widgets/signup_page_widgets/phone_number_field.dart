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
      padding: MediaQuery.of(context).size.width < 380
          ? const EdgeInsets.only(top: 10.0)
          : const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone number",
            style: MediaQuery.of(context).size.width < 380
                ? labelaStyleSmall
                : labelaStyle,
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
