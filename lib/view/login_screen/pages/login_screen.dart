import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lmma_box/view/welcome_screen/widgets/shared_widgets/app_bar_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool rememberMe = false;


   // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(child: appBarWidget()),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 24),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(fontSize: 24),
                    )),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 30),
                            alignment: Alignment.topLeft,
                            child: Text('Email')),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'example@email.test',
                          ),
                          validator: (String value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 30),
                            alignment: Alignment.topLeft,
                            child: Text('Password')),
                        TextFormField(
                          
                          obscureText: _obscureText,
                          decoration: InputDecoration(  
                            hintText: '**********',
                            suffixIcon:  IconButton(
                  icon: FaIcon(_obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash), onPressed: _toggle),
                          ),
                          validator: (String value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                      activeColor: Color(0xFF1CBD8D),
                      value: rememberMe,
                      onChanged: (bool value) {
                        setState(() {
                          this.rememberMe = value;
                        });
                      }),
                  Text('Remember')
                ],
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(color: Color(0xFF1CBD8D)),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            width: 315,
            height: 45,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    primary: Color(0xFFFFDF36)),
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                  }
                },
                child:
                    Text('Login', style: TextStyle(color: Color(0xFF68572d)))),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: Divider(
                  height: 2,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              ),
              Text('or'),
              Container(
                width: 150,
                child: Divider(
                  height: 2,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  color: Colors.blue,
                  onPressed: () {}),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.google), onPressed: () {}),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  color: Colors.lightBlue,
                  onPressed: () {}),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  color: Colors.blue[700],
                  onPressed: () {}),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram), onPressed: () {}),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New to Lmmaa?'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(color: Color(0xFF1CBD8D)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
