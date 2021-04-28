import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';

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
            style: TextStyle(
              color: Color(0xff373737),
              fontWeight: FontWeight.bold,
            ),
          ),
          InternationalPhoneInput(
            decoration: const InputDecoration(
              hintText: 'Ex: 3452323423',
              border: UnderlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFE0E0E0),
                  width: 1.0,
                ),
              ),
            ),
            hintText: "Ex: 3452323423",
            showCountryFlags: false,
          ),
        ],
      ),
    );
  }
}
