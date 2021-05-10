import 'package:flutter/material.dart';
import 'package:lmma_box/utils/style/styles.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/app_bar_widget.dart';

class TermsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // this is all you need
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, true),
        ),
        title: Text(
          "Confirm code",
          style: confirmHeader,
        ),
      ),
      body: SizedBox(
        height: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Center(
                child: Image.asset(
                  'assets/lmmaa_box.png',
                ),
              ),
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
      ),
    );
  }
}
