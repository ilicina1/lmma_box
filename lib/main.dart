import 'package:flutter/material.dart';
import 'package:lmma_box/viewModel/facebooksigninViewModel.dart';
import 'package:lmma_box/viewModel/googlesigninViewModel.dart';

import 'buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'AWS Cognito Google Facebook signin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String idendity_provider;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Wrap(
              runSpacing: 20,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: GoogleButton(
                        GoogleSignInViewModel().onGoogleSignIn(context))),
                SizedBox(
                    width: double.infinity,
                    child: FacebookButton(
                        FacebookSignInViewModel().facebookLogin(context))),
              ],
            ),
          ),
        ));
  }
}
