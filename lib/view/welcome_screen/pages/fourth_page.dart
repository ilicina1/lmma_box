import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/image_27.jpg'),         
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 96, 50, 50),
            child: Center(
              
              child: Text('Some Onboarding Text', style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 30),
            child: Text('Delivering quality home cooking to your door', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
          ),
          Container(
            width: 275,
            height: 45,
            child: FloatingActionButton.extended(
        onPressed: () {
            // Add your onPressed code here!
        },
        label: const Text('Get Started', style: TextStyle(fontSize: 16, color: Colors.brown),),
        backgroundColor: Colors.yellow,
        elevation: 0,
        
      ),
          )
          
        ],
      ),
      
    );
  }
}