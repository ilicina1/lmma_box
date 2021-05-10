import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';

class TermsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: ButtonTheme(
          highlightColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black38,
            onPressed: () => Navigator.pop(context, true),
          ),
        ),
        title: Text(
          "Terms of use",
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
