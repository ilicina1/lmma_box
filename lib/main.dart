import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:lmma_box/amplifyconfiguration.dart';
import 'package:lmma_box/providers/form_signin_notifier.dart';
import 'package:lmma_box/providers/form_signup_notifier.dart';
import 'package:lmma_box/providers/screen_scroll.dart';
import 'package:lmma_box/view/signup_screen/pages/testSignUp.dart';
import 'package:provider/provider.dart';

import 'view/welcome_screen/pages/first_page.dart';
import 'view/welcome_screen/pages/page_scroller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: FormSignUpNotifier()),
        ChangeNotifierProvider.value(value: FormSignInNotifier()),
        ChangeNotifierProvider.value(value: ScreenScrollProvider(0)),
      ],
      child: MyApp(),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var signedIn;

  @override
  initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    // Add Pinpoint and Cognito Plugins, or any other plugins you want to use
    AmplifyAuthCognito authPlugin = AmplifyAuthCognito();
    Amplify.addPlugins([authPlugin]);
    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      print(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LmmaBox',
      theme: ThemeData(
        fontFamily: 'Averta',
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: FlutterSession().get('isSignedIn'),
        builder: (context, snapshot) {
          return snapshot.data == true ? TestSignUp() : PageScroller();
        },
      ),
      // home: PageScroller(),
    );
  }
}
