import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:lmma_box/utils/dummyData/dummyData.dart';
import 'package:lmma_box/utils/style/signup_screen_style.dart';

class PhoneNumberField extends StatefulWidget {
  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    void onPhoneNumberChange(
        String number, String internationalizedPhoneNumber, String isoCode) {
      setState(() {
        phoneNumber = number;
        phoneIsoCode = isoCode;
      });
    }

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
            onPhoneNumberChange: onPhoneNumberChange,
            initialSelection: "+387",
            decoration: InputDecoration(
              hintText: 'Ex: 3452323423',
              border: border,
              focusedBorder: focused,
            ),
            hintText: "Ex: 3452323423",
            showCountryFlags: true,
          ),
        ],
      ),
    );
  }
}
