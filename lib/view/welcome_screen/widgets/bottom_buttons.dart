import 'package:flutter/material.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:provider/provider.dart';

class BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child:Provider.of<ScreenScrollProvider>(context).page == 3 ?  Container(
        width: 275,
        height: 45,
        child: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text(
            'Get Started',
            style: TextStyle(fontSize: 16, color: Colors.brown),
          ),
          backgroundColor: Colors.yellow,
          elevation: 0,
        ),
      ) : Container(
        child: Text('next'),
      ),
    );
  }
}
