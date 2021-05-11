import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';

class TermsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        leadingWidth: 80, // <-- Use this
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RawMaterialButton(
            elevation: 0,
            fillColor: Color(0xffF9F9F9),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 35.0,
            ),
            onPressed: () => Navigator.pop(context, true),
          ),
        ),

        title: Text(
          "Privacy policy",
          style: confirmHeader,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Image.asset(
                'assets/lmmaa_box.png',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              "Terms of use",
              style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            child: Text(
              "Description that is too long in text format(Here Data is coming from API)",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
